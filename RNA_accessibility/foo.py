#!/usr/bin/env python3

# Cas13 gRNA
# ###
# 1. RNA.pfl_fold_up(seq, ulength, window_size, max_bp_gap) # lunp
# 2. processing _lunp results( column) # unpair probability
# 3. save as bedGraph file # unpair probability [=accessibility?!], bigwig?
# 4. find peaks (call Macs2)
# 5. extract probes: a. 28-nt; b. "-1" not "G" on target
# 6. report sgRNA list:
# 
# format:
# sgRNA-id, start, end, 

import os
import sys
import fnmatch
import shutil
import logging
import subprocess

logging.basicConfig(
    format='[%(asctime)s %(levelname)s] %(message)s',
    datefmt='%Y-%m-%d %H:%M:%S',
    stream=sys.stdout)
log = logging.getLogger(__name__)


def listfiles(path, full_name=True, recursive=False, include_dir=False):
    """
    List all the files within the path
    """
    out = []
    for root, dirs, files in os.walk(path):
        if full_name:
            dirs = [os.path.join(root, d) for d in dirs]
            files = [os.path.join(root, f) for f in files]
        out += files

        if include_dir:
            out += dirs

        if recursive is False:
            break

    return out


def listfiles2(pattern, path='.', full_name=True, recursive=False, include_dir=False):
    """
    List all the files in specific directory
    fnmatch.fnmatch()

    pattern:

    *       matches everything
    ?       matches any single character
    [seq]   matches any character in seq
    [!seq]  matches any char not in seq

    An initial period in FILENAME is not special.
    Both FILENAME and PATTERN are first case-normalized
    if the operating system requires it.
    If you don't want this, use fnmatchcase(FILENAME, PATTERN).

    example:
    listfiles('*.fq', './')
    """
    fn_list = listfiles(path, full_name, recursive, include_dir=include_dir)
    fn_list = [f for f in fn_list if fnmatch.fnmatch(os.path.basename(f), pattern)]
    return fn_list


def run_shell_cmd(cmd):
    """This command is from 'ENCODE-DCC/atac-seq-pipeline'
    https://github.com/ENCODE-DCC/atac-seq-pipeline/blob/master/src/encode_common.py
    """
    p = subprocess.Popen(['/bin/bash','-o','pipefail'], # to catch error in pipe
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        universal_newlines=True,
        preexec_fn=os.setsid) # to make a new process with a new PGID
    pid = p.pid
    pgid = os.getpgid(pid)
    log.info('run_shell_cmd: PID={}, PGID={}, CMD={}'.format(pid, pgid, cmd))
    stdout, stderr = p.communicate(cmd)
    rc = p.returncode
    err_str = 'PID={}, PGID={}, RC={}\nSTDERR={}\nSTDOUT={}'.format(
        pid, 
        pgid, 
        rc,
        stderr.strip(), 
        stdout.strip())
    if rc:
        # kill all child processes
        try:
            os.killpg(pgid, signal.SIGKILL)
        except:
            pass
        finally:
            raise Exception(err_str)
    else:
        log.info(err_str)
    return stdout.strip('\n')


## input: fasta
def readfa(fh):
    """Read FASTA file, return [name, seq]
    input is fh of open()
    """
    name = seq = ''
    for line in fh:
        if line.startswith('>'):
            line = line.replace('>', '')
            head = line.strip().split()[0]
            if len(seq) > 0:
                yield [name, seq]
            name = head
            seq = ''
            continue
        seq += line.strip()

    if len(seq) > 0:
        yield [name, seq]


def vienna_python_path():
    # RNAfold command
    # /path-to-ViennaRNA/bin/RNAfold
    # /path-to-ViennaRNA/lib/python3.7.3/site-packages
    rnafold_path = shutil.which('RNAfold')
    vpath = os.path.dirname(os.path.dirname(rnafold_path))
    vlib = os.path.join(vpath, 'lib')

    x = listfiles2('site-packages', vlib, recursive=True, include_dir=True)
    x = [i for i in x if os.path.exists(os.path.join(i, 'RNA'))]

    return x[0] if len(x) > 0 else None


def rnaplfold(sequence, ulength=31, window_size=70, max_bp_span=0):
    """Run RNAplfold, (RNA.pfl_fold_up() in python lib)
    sequence, ulength, window_size, max_bp_span
    : defult: max_bp_span = window_size
    : 
    : return the last column <unpair probabilities>
    """
    if max_bp_span < 1:
        max_bp_span = window_size

    # unpair probabilities
    up_matrix = RNA.pfl_fold_up(sequence, ulength, window_size, max_bp_span)
    up = [i[ulength] for i in up_matrix]
    return up[1:] # remove the first number (0.0)


def score2bdg(x, seq_name, locus=None, save2file=None):
    """Create bedGraph file from a score
    chr  start  end  score
    : locus chr:start-end:strand
    """
    # determine the chr locus
    if locus is None:
        chr = seq_name
        start = end = 0
        strand = '+'
    else:
        locus = locus.replace(',', '') # remove ","
        p = re.match('(.*):(\d+)-(\d+)(:.)?', locus) #
        chr, start, end, strand = [p.group(i) for i in [1, 2, 3, 4]]
        strand = strand.replace(':', '') # remove ":"
        if not strand:
            strand = '+' # default

    # determine the order of scores
    if strand == '-':
        x = x[::-1] # reverse

    # output: seq_name
    # locus: chr:start-end:strand
    bdg_out = []
    for i in range(len(x)):
        bed_tabs = [chr, str(start + i), str(start + i + 1), str(x[i])]
        bed_line = '\t'.join(bed_tabs)
        bdg_out.append(bed_line)

    # save to file
    if save2file:
        with open(save2file, 'wt') as w:
            w.write('\n'.join(bdg_out) + '\n')

    return bdg_out


def bdgpeakcall(in_bdg, out_dir, cutoff=5, min_length=200, max_gap=30, overwrite=False):
    """Call peaks using bedGraph input
    eg: macs2 bdgpeakcal -i {x} -c {bg_mean} -l {length} -g 0 -o {peak}
    """
    prefix = os.path.splitext(os.path.basename(in_bdg))[0]
    out_peak = os.path.join(out_dir, prefix + '.narrowPeak')
    if not os.path.exists(out_dir):
        os.makedirs(out_dir)

    # create command
    cmd = 'macs2 bdgpeakcall --ifile {} --cutoff {} --min-length {} \
        --max-gap {} --ofile {}'.format(
        in_bdg,
        cutoff,
        min_length,
        max_gap,
        out_peak)
    # print(cmd)

    if os.path.exists(out_peak) and overwrite is False:
        logging.info('file exists, skip macs2 bdgpeakcall')
    else:
        run_shell_cmd(cmd)

    # return the output file, peak
    return out_peak


def getfa(x, bed_file, fa_file):
    """Get fasta sequence
    input one sequence
    : x the seqence
    : bed the 
    """
    with open(bed_file) as r, open(fa_file, 'wt') as w:
        for line in r:
            tabs = line.strip().split('\t')
            if len(tabs) < 4:
                continue
            chr, start, end, name = tabs[:4]
            start = int(start)
            end = int(end)
            w.write('>{}\n{}'.format(name, x[start:end]) + '\n')


## add Python lib from ViennaRNA package
vpath = vienna_python_path()
if vpath is None:
    sys.exit('python module [RNA] not detected, install it first!')
else:
    sys.path.append(vpath)

import RNA


## command

def main():
    if len(sys.argv) < 3:
        print('acc.py <in.fa> <out_dir>')
        sys.exit('args error')

    in_fa = sys.argv[1]
    out_dir = sys.argv[2]
    window = 70
    ulength = 28
    max_bp_gap = 10
    min_length = 20 # Macs2
    # in_fa = '5S.seq'
#    in_fa = '2019-nCoV.fa'
#     out_dir = 'aaaaaa'

    # output dir
    if not os.path.exists(out_dir):
        os.makedirs(out_dir)

    # input fasta    
    with open(in_fa) as r:
        for seq_name, seq in readfa(r):
            bdg_file = os.path.join(out_dir, seq_name + '.unpaired_probability.bedGraph')
            s = rnaplfold(seq, ulength=28, window_size=70) # scores
            # mean of scores
            cutoff = sum(s) / len(s) * 0.5
            score2bdg(s, seq_name, save2file=bdg_file)
            # call peak
            peak_file = bdgpeakcall(bdg_file, out_dir, cutoff=cutoff, min_length=min_length, max_gap=max_gap)
            # extract peak sequences
            peak_fa = peak_file.replace('.narrowPeak', '.peak.fa')
            # peak2fa(seq, peak_file, peak_fa)
            getfa(seq, peak_file, peak_fa)
 #           break


if __name__ == '__main__':
    main()
