
# Motif in Sequence

## Purpose

Search motifs in sequence (fasta)   


## Tools

FIMO [The MEME Suite](http://meme-suite.org/doc/fimo.html)


## Command

fimo --text -oc outdir motif.meme in.fa > out.fimo.txt

## Output:

Text mode:

[FIMO Output Formats](http://meme-suite.org/doc/fimo-output-format.html)   


IMO outputs a tab-separated values (TSV) file ('fimo.tsv') that contains one line for each significant match to a motif. The lines are sorted in order of decreasing statistical significance (increasing p-value). The first line contains the (tab-separated) names of the fields. Your command line is given at the end of the file in a comment line starting with the character '#'. The names and meanings of each of the fields are described in the table below.

field	name	contents
1	motif_id	The name of the motif, which is unique in the motif database file.
2	motif_alt_id	An alternate name for the motif, which may be provided in the motif database file.
3	sequence_name	The identifier of the sequence (from the FASTA sequence header line) --OR-- the name of the sequence extracted from the sequence identifier (in the FASTA sequence header line).
When you use the --parse-genomic--coord option, the sequence name ends at the first colon ':' (if any) present in the sequence's FASTA identifier. Typically this is the chromosome or contig name. With the --parse-genomic--coord option, the start and stop positions are in 0-based coordinates relative to the sequence start given in the FASTA sequence identifier (just after the sequence name).
4	start	The start position of the motif occurrence; 1-based sequence coordinates. --OR-- The start position of the motif occurrence; genomic coordinates. The latter case occurs when FIMO was run with the --parse-genomic-coord option and has split the sequence identifier into sequence name, sequence start and sequence end in genomic coordinates.
5	stop	The end position of the motif occurrence; 1-based sequence coordinates. --OR-- The end position of the motif occurrence; genomic coordinates. The latter case occurs when FIMO was run with the --parse-genomic-coord option and has split the sequence identifier into sequence name, sequence start and sequence end in genomic coordinates.
6	strand	The strand '+' indicates the motif matched the forward strand, '-' the reverse strand, and '.' indicates strand is not applicable (as for amino acid sequences).
7	score	The score for the motif occurrence. The score for the match of a position in a sequence to a motif is computed by summing the appropriate entry from each column of the position-dependent scoring matrix that represents the motif.
8	p-value	The p-value of the motif occurrence. The p-value of a motif match is the probability of a single random subsequence of the length of the motif scoring at least as well as the observed match.
9	q-value	The q-value of the motif occurrence. The minimum False Discovery Rate (FDR) required to consider this match significant.
FIMO estimates q-values from all the match p-values using the method proposed by Benjamini & Hochberg (Journal of the Royal Statistical Society B, 57:289-300, 1995). See also Storey JD, Tibshirani R. Statistical significance for genome-wide studies, Proc. Natl. Acad. Sci. USA (2003) 100:94409445. Note: This column is empty if you used the --text switch.
10	sequence	The region of the sequence matched to the motif.


### Example output:

```
motif_id        motif_alt_id    sequence_name   start   stop    strand  score   p-value q-value matched_sequence
AAAAATACCRMA    Unknown4/Drosophila-Promoters/Homer     FBgn0003922     976     987     +       11.1171 8.48e-05       GTATATACTAGA
AAAAATACCRMA    Unknown4/Drosophila-Promoters/Homer     FBgn0031719     292     303     +       12.2432 4.82e-05       TTAAATACTGCA
AAAAATACCRMA    Unknown4/Drosophila-Promoters/Homer     FBgn0031719     915     926     -       11.9009 5.76e-05       TTAAATACCGCG
AAAAATACCRMA    Unknown4/Drosophila-Promoters/Homer     FBgn0038508     650     661     +       11.5856 6.87e-05       AAAAATATTAAA

```

### Conversion tools

+ 1. Extract motif from a large file

`meme-get-motif`: 

```
Usage: meme-get-motif [options] [<MEME file>]
Options:
    -id <id>       id of motif to extract from the MEME file
    -a             match alternate id instead of id
    -ia            match either id or alternate id
    -rc            reverse complement motifs (assuming alphabet allows)
    -all           get all motifs in the MEME file

Description:
    Extract motif(s) from a MEME formatted file and writes out to standard
    output.

```

[motif conversion utilities](http://meme-suite.org/doc/overview.html#motif_conversion_utilities)