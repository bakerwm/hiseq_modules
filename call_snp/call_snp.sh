#!/bin/bash

# Date: 2019-11-21
# Author: Ming Wang

# requirement
#
# fastq files: paired-end 
# bwa-index
# reference file: fasta format
#
# # software
# bwa 0.7.17-r1188
# samtools 1.9
# bcftools 1.9
# 
# python >3.5
# pysam 0.15.3


function callSnp() {
    fq1=$1
    fq2=$2
    dir=$3

    # name
    prefix=$(basename ${fq1})
    prefix=${prefix/_1.f[aq].gz}
    outdir="${dir}/${prefix}" 
    bam="${outdir}/${prefix}.bam"
    bed="${outdir}/${prefix}.snp.bed"
    vcf="${outdir}/${prefix}.vcf"
    bcf="${outdir}/${prefix}.bcf"
    flagstat="${outdir}/${prefix}.flagstat"

    # prepare
    mkdir -p ${outdir}

    # echo
    echo "call snp: ${prefix}"

    # alignment
    [[ ! -f ${bam} ]] && \
        bwa mem -t ${CPU} ${index} "<zcat ${fq1} ${fq2}" | \
        samtools view -Sub -F 0x4 - | \
        samtools sort -o ${bam} - && \
        samtools index ${bam}
    [[ ! -f ${flagstat} ]] && \
        samtools flagstat ${bam} > ${flagstat}

    # call SNP
    [[ ! -f ${vcf} ]] && \
        bcftools mpileup -Ou -f ${ref_fa} ${bam} | \
            bcftools call -mv -Ov -o ${vcf}

    # call SNP, bed
    [[ ! -f ${bed} ]] && \
        python ${edits_parser} -t DNA -i ${bam} -g ${ref_fa} -o ${bed}
}



## assay
[[ $# -lt 2 ]] && echo "bash call_snp.sh <data_dir> <out_dir>" && exit 1
indir=$1
outdir=$2

## files
CPU=4
bin_dir="$(dirname $0)"
ref_fa="${bin_dir}/eGFP.fa"
index="${bin_dir}/bwa_index/eGFP"
edits_parser="${bin_dir}/edits_parser.py"
# index="/home/wangming/data/genome/GFP/bwa_index/eGFP"
# ref_fa="/home/wangming/data/genome/GFP/bigZips/eGFP.fa"
# edits_parser="/data/yulab/wangming/work/yu_2020/projects/20200430_ws_aid/scripts/edits_parser.py"

for fq1 in ${indir}/*_1.f[aq].gz ; do
    fq2=${fq1/_1.fa/_2.fa}
    fq2=${fq1/_1.fq/_2.fq}
    callSnp ${fq1} ${fq2} ${outdir}  &
done


## End
