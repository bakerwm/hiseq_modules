#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""Extract base-content for each position, limit 10kb (region)


Alignment: BWA with default parameters

bwa mem -t ${CPU} ${index} ${fq}


DNA: strandless 
RNA: strand +/- [forward: -f 16; reverse: -F 16]

pipeline

1. samtools view: separate forward strand (-f 16) and reverse strand (-F 16)
2. samtools mpileup: filt and extract nucleotide content at each position
3. sequenza-utils pileup2acgt: extract ACGT content and frequency
4. functions: further filt editsites


output:
1       chrom
2       chromStart
3       chromEnd
4       name of edits, [chrom]_[chromEnd]_[read_depth]_[pct_of_edit]%
5       REF
6       ALT
7       read_depth
8       A count
9       C count
10      G count
11      T count
12      N count       
"""

__author__ = "Ming Wang <wangm08@hotmail.com>"
__copyright__ = "2019 by Ming Wang <wangm08@hotmail.com>"
__license__ = "MIT"
__email__ = "wangm08@hotmail.com"
__version__ = "0.1"


import os, sys, argparse, tempfile, logging
import shlex, subprocess
import logging
import pysam


logging.basicConfig(format='[%(asctime)s] %(message)s', 
                    datefmt='%Y-%m-%d %H:%M:%S', 
                    level=logging.DEBUG)


def get_args():
    ## parsing arguments
    parser = argparse.ArgumentParser(
        prog = 'edits_parser', description='Parsing editing sites',
        epilog='Output: ')
    parser.add_argument('-i', required=True, metavar='BAM', 
        help='alignments in BAM format, sorted')
    parser.add_argument('-g', required=True, metavar='Genome',
        help='Reference sequence, FASTA format')
    parser.add_argument('-o', required=True, metavar='OUTPUT',
        help='file to save the results')    
    parser.add_argument('--depth_cutoff', default=2, type=int, 
        metavar='depth',
        help='minimum read depth at editing position, default: 1')
    parser.add_argument('--pct_cutoff', default=10, type=int,
        metavar='percentage',
        help='minimum editing percentage [1-100]%%, default: 10')
    parser.add_argument('-t', default='DNA', choices=['DNA', 'RNA'],
        help='call SNP for RNA or DNA, default: DNA')
    parser.add_argument('--overwrite', action='store_true',
        help='if specified, overwrite existing file')
    args = parser.parse_args()
    return args


def mpileup2acgt(pileup, quality, depth, reference, qlimit=53, 
    noend=False, nostart=False):
    """This function was written by Francesco Favero, 
    from: sequenza-utils pileup2acgt 
    URL: https://bitbucket.org/sequenza_tools/sequenza-utils
    original code were protected under GPLv3 license.

    Parse the mpileup format and return the occurrence of
    each nucleotides in the given positions.

    pileup format:

    1    chr
    2    1-based coordinate
    3    reference base
    4    depth
    5    read bases
    6    base qualities
    7    mapping qualities

    # argument pileup = column-6

    ## output




    """
    nucleot_dict = {'A': 0, 'C': 0, 'G': 0, 'T': 0}
    strand_dict = {'A': 0, 'C': 0, 'G': 0, 'T': 0}
    n = 0
    block = {'seq': '', 'length': 0}
    start = False
    del_ins = False
    l_del_ins = ''
    last_base = None
    ins_del_length = 0
    for base in pileup:
        if block['length'] == 0:
            if base == '$':
                if noend:
                    if last_base:
                        nucleot_dict[last_base.upper()] -= 1
                        if last_base.isupper():
                            strand_dict[last_base.upper()] -= 1
                    last_base = None
            elif base == '^':
                start = True
                block['length'] += 1
                block['seq'] = base
            elif base == '+' or base == '-':
                del_ins = True
                block['length'] += 1
                block['seq'] = base
            elif base == '.' or base == ',':  ## . on froward, , on reverse
                if ord(quality[n]) >= qlimit:
                    nucleot_dict[reference] += 1
                    if base == '.':
                        strand_dict[reference] += 1
                        last_base = reference
                    else:
                        last_base = reference.lower()
                else:
                    last_base = None
                n += 1
            elif base.upper() in nucleot_dict:
                if ord(quality[n]) >= qlimit:
                    nucleot_dict[base.upper()] += 1
                    if base.isupper():
                        strand_dict[base.upper()] += 1
                    last_base = base
                else:
                    last_base = None
                n += 1
            else:
                n += 1
        else:
            if start:
                block['length'] += 1
                block['seq'] += base
                if block['length'] == 3:
                    if not nostart:
                        if base == '.' or base == ',':
                            if ord(quality[n]) >= qlimit:
                                nucleot_dict[reference] += 1
                                if base == '.':
                                    strand_dict[reference] += 1
                        elif base.upper() in nucleot_dict:
                            if ord(quality[n]) >= qlimit:
                                nucleot_dict[base.upper()] += 1
                                if base.isupper():
                                    strand_dict[base.upper()] += 1
                    block['length'] = 0
                    block['seq'] = ''
                    start = False
                    last_base = None
                    n += 1
            elif del_ins:
                if base.isdigit():
                    l_del_ins += base
                    block['seq'] += base
                    block['length'] += 1
                else:
                    ins_del_length = int(l_del_ins) + 1 + len(l_del_ins)
                    block['seq'] += base
                    block['length'] += 1
                    if block['length'] == ins_del_length:
                        block['length'] = 0
                        block['seq'] = ''
                        l_del_ins = ''
                        # ins_del = False
                        ins_del_length = 0

    nucleot_dict['Z'] = [strand_dict['A'], strand_dict['C'], strand_dict['G'], 
                         strand_dict['T']]
    return nucleot_dict


def top_key(d, ref):
    """Pick most content key
    input: dict [count or pct]

    output: A|C|G|T|-
    
    # top1 (n=1): A
    # top1 (n>1): A,C,...
    # top1 (n=0): -

    """
    # top keys
    h1 = [i for i, j in iter(d.items()) if j == max(d.values())]
 
    # check ref
    if ref in h1:
        h1.remove(ref)

    # check output
    if len(h1) == 1:
        out = h1[0]
    elif len(h1) > 1:
        out = ','.join(h1)
    else:
        out = '-'
    
    return out


def rna_snp_filter(fs, **args):
    """
    filt bases: count>depth_cutoff, pct>pct_cutoff
    fit: samtools pileup output
    chr n_base ref_base read.depth A C G T strand

    example:

    column  header
    1       chr
    2       coord
    3       refbase
    4       total
    5       A
    6       C
    7       G
    8       T
    """
    assert isinstance(fs, list)
    refbase = fs[2]
    nTotal, nA, nC, nG, nT = list(map(float, fs[3:8]))
    nN = int(nTotal - nA - nC - nG - nT)
    nTotal = nA + nC + nG + nT
    if nTotal == 0:
        return None
    fA = nA / nTotal * 100
    fC = nC / nTotal * 100
    fG = nG / nTotal * 100
    fT = nT / nTotal * 100
    fHit = 0
    if args['strand'] == '-':
        if refbase == 'T' and fC >= pct_cutoff and nTotal >= args['depth_cutoff']:
            fHit = fC
        else:
            return None
    else:
    # elif strand == '+':
        if refbase == 'A' and fG >= pct_cutoff and nTotal >= args['depth_cutoff']:
            fHit = fG
        else:
            return None
    ## for BED3 format
    start = int(fs[1]) - 1
    name = fs[0] + '_' + fs[1] + '_{}_{}%'.format(int(nTotal), int(fHit))
    f_out = [fs[0], start, fs[1], int(fHit), name, fs[2], int(nTotal)] + fs[4:8] + [str(nN)]
    return list(map(str, f_out))


def dna_snp_filter(fs, **args):
    """DNA sequencing, non-strand-specific
    fit: samtools pileup output
    chr n_base ref_base read.depth A C G T strand

    example:

    column  header
    1       chr
    2       coord
    3       refbase
    4       total
    5       A
    6       C
    7       G
    8       T
    """
    assert isinstance(fs, list)
    refbase = fs[2]
    nTotal, nA, nC, nG, nT = list(map(float, fs[3:8]))
    nN = int(nTotal - nA - nC - nG - nT)
    nTotal = nA + nC + nG + nT
    if nTotal == 0:
        return None
    fA = nA / nTotal * 100
    fC = nC / nTotal * 100
    fG = nG / nTotal * 100
    fT = nT / nTotal * 100
    fN = nN / nTotal * 100
    ## content
    fDict = {"A": fA, "C": fC, "G": fG, "T": fT, "-": 0}
    hitbase = top_key(fDict, refbase)
    # fHit = fDict[hitbase]
    fHit = fDict.get(hitbase, 0)

    ## for BED3 format
    start = int(fs[1]) - 1
    name = '{},{},{}:{},{}:{}'.format(fs[0], fs[1], refbase, int(nTotal), hitbase, int(fHit))
    f_out = [fs[0], fs[1], name, refbase, hitbase, int(nTotal)] + fs[4:8] + [str(nN)]
    return list(map(str, f_out))


def snp_parser(**args):
    """Extract nucleotide count table at each position
    """
    # parameters
    # out_path
    outPath = os.path.dirname(args['outfile'])
    if outPath != '' and not os.path.exists(outPath):
        os.makedirs(outPath)
    # indexed genome
    if not os.path.exists(args['genome_fa'] + '.fai'):
        tmp = pysam.faidx(args['genome_fa']) # make faidx
    # dna or rna
    if args['snp_type'].lower() == 'dna':
        snp_filter = dna_snp_filter
    elif args['snp_type'].lower() == 'rna':
        snp_filter = rna_snp_filter
    else:
        return None
    # strand
    if args['strand'] == '+':
        flag = '-F 16'
    elif args['strand'] == '-':
        flag = '-f 16'
    else:
        flag = '-F 4' # mapped reads, for non-strand-specific BAM

    # write mode
    write_mode = 'at' if args['append'] else 'wt'

    # run commands
    c1 = 'samtools view {} -bhS {}'.format(flag, args['bam'])
    c2 = 'samtools mpileup -a -d 10000000 -AB --ff 4 -q 0 -Q 0 -s -f {} -'.format(args['genome_fa'])
    p1 = subprocess.Popen(shlex.split(c1), stdout=subprocess.PIPE)
    p2 = subprocess.Popen(shlex.split(c2), stdin=p1.stdout, 
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE, 
                          universal_newlines=True)
    
    # header
    header = ["#chr", "pos", "name", "refbase", "depth", "total", "A", "C", "G", "T", "N"]

    # parsing output
    with open(args['outfile'], write_mode) as fo:

        ## write the header
        if write_mode == 'wt':
            fo.write('\t'.join(header) + '\n')

        while True:
            line = p2.stdout.readline().strip()

            if not line: 
                break
            chr, pos, refbase, depth, pileup, quality, map_quality = line.strip().split('\t')
            refbase = refbase.upper()
            depth = int(depth)
            if depth >= args['depth_cutoff']:
                acgt_res = mpileup2acgt(pileup, quality, depth, refbase, 
                    qlimit=25, noend=False, nostart=False)
                f_out = [chr, pos, refbase, depth, acgt_res['A'], acgt_res['C'], 
                    acgt_res['G'], acgt_res['T']]
                # filtering
                # print(f_out)
                f_out2 = snp_filter(f_out, **args)
                if f_out2:
                    fo.write('\t'.join(list(map(str, f_out2))) + '\n')
    return True


def edits_parser(**args):
    logging.info('calling edits: %s' % os.path.basename(args['bam']))
    if os.path.exists(args['outfile']) and args['overwrite'] is False:
        logging.info('edits file exists, skipping: ' + args['outfile'])
    else:
        try:
            if args['snp_type'].lower() == 'dna':
                args['strand'] = '*'
                args['append'] = False
                snp_parser(**args)
            elif args['snp_type'].lower() == 'rna':
                # forward strand
                args['strand'] = '+'
                args['append'] = False
                snp_parser(**args)
                # reverse strand
                args['strand'] = '-'
                args['append'] = True
                snp_parser(**args)
            else:
                logging.info('unknown type of snp: %s' % snp_type)
        except IOError:
            logging.info('fail to call edits')
    return args['outfile']


def main():
    args = get_args() #
    assert args.depth_cutoff > 0
    assert args.pct_cutoff >= 0 and args.pct_cutoff <= 100
    ## run
    argsV1 = vars(args).copy()
    argsV1['bam'] = args.i
    argsV1['outfile'] = args.o
    argsV1['genome_fa'] = args.g
    argsV1['snp_type'] = args.t

    edits_parser(**argsV1)

if __name__ == '__main__':
    main()


## EOF
