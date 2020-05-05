
# bg="../20200218_rna_accessibility/MN908947.3.bg"
bg="NC_045512.2.bg"
name=$(basename ${bg%.bg})

fa="${bg/.bg/.fasta}"
fai="${fa}.fai"
bdg="${name}.bedGraph"
bw="${name}.bigWig"
peak="${name}.narrowPeak"
peak_fa="${name}.narrowPeak.fa"
peak_bed="${name}.narrowPeak.bed"
peak_tab="${name}.narrowPeak.bed.tab"

# # 1. Convert: Pair probability to Accessibility
## remove the last row (coordinates bigger than fa size)
cat ${bg} | awk '{OFS="\t"; n=1-$4; print $1,$2,$3,n}' > ${bdg}
 
# 2. Call peaks
macs2 bdgpeakcall -i ${bdg} -c 0.485705 -l 20 -g 0 -o ${peak}

# 3. Extract fasta sequence
bedtools getfasta -fi $fa -bed $peak -fo $peak_fa -name -tab

# 4. Calculate the average "RNA accessibility" over the peak
cut -f1-6 $peak | sed '1d' > $peak_bed # remove head line
bedGraphToBigWig $bdg $fai $bw 
bigWigAverageOverBed $bw $peak_bed $peak_tab 
