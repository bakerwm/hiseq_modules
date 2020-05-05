

## input the directory of raw_data
## prepare structure of output files
##
##  dir
##   |--data
##   |   |--raw_data
##   |   |--clean_data
##   |   |--collapsed
##   |--results
##   |   |--clean_data
##   |   |--collapsed


## input dir
[[ $# -lt 2 ]] && echo "pre_data.sh <raw_dir> <out_dir>" && exit 1
raw_dir=$1
out_dir=$2

## prepare clean data
data_dir=${out_dir}/data

## trim 1-2nt
clean_dir="${data_dir}/clean_data"
mkdir -p ${clean_dir}
for i in ${raw_dir}/*gz
do
    fname=$(basename $i)
    echo "trim 1-2nt: ${fname}"
    outfq=${clean_dir}/${fname}
    [[ -f ${outfq} ]] || zcat $i | fastx_trimmer -f 3 -z > ${outfq}
done

## collapsed
collapsed_dir="${data_dir}/collapsed"
mkdir -p ${collapsed_dir}
for i in ${clean_dir}/*gz
do
    fname=$(basename $i)
    fname=${fname/.fq/.fa}
    echo "collapsed: ${fname}"
    outfq=${collapsed_dir}/${fname}
    [[ -f ${outfq} ]] || zcat $i | fastx_collapser | gzip > ${outfq}
done

## fq stat
stat_raw=${raw_dir}/fq.stat
stat_clean=${clean_dir}/fq.stat
stat_collapsed=${collapsed_dir}/fq.stat
[[ -f $stat_raw ]] || seqkit stat ${raw_dir}/*gz > ${stat_raw}
[[ -f $stat_clean ]] || seqkit stat ${clean_dir}/*gz > ${stat_clean}
[[ -f $stat_collapsed ]] || seqkit stat ${collapsed_dir}/*gz > ${stat_collapsed}


