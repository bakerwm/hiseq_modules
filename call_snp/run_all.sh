


## input raw_data, prj_dir
[[ $# -lt 2 ]] && echo "run.sh <raw_dir> <prj_dir>" && exit 1 
raw_dir=$1
prj_dir=$2


## scripts
bin_dir=$(dirname $0)
pre_data="${bin_dir}/pre_data.sh"
call_snp="${bin_dir}/call_snp.sh"
report_R="${bin_dir}/AID_report.R"
[[ ! -f $pre_data ]] && echo "script not found: $pre_data" && exit 1
[[ ! -f $call_snp ]] && echo "script not found: $call_snp" && exit 1 
[[ ! -f $report_R ]] && echo "script not found: $report_R" && exit 1 

## prepare data
clean_dir="${prj_dir}/data/clean_data"
collapsed_dir="${prj_dir}/data/collapsed"
bash ${pre_data} ${raw_dir} ${prj_dir}

## call snp
results_clean="${prj_dir}/results/clean_data"
results_collapsed="${prj_dir}/results/collapsed"
echo "call snp for clean_data"
bash ${call_snp} ${clean_dir} ${results_clean}
echo "call snp for collapsed data"
bash ${call_snp} ${collapsed_dir} ${results_collapsed}

## create report
echo "generate report"
html="${prj_dir}/results/report/AID_report.html"
[[ ! -f ${html} ]] && Rscript $report_R $prj_dir

## END
