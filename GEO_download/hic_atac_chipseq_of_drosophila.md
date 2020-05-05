---
title: "Hi-C, ATAC-seq and ChIP-seq datasets of Drosophila embryos and Kc cells"
date: "2019-12-16"
author:
- name: Ming Wang
  email: wangming@ibp.ac.cn
output:
  html_document:
    highlight: tango
    toc: yes
    toc_float:
      collapsed: no
    keep_md: true
  word_document:
    toc: yes
  pdf_document:
    toc: yes
abstract: |
  Hi-C, ChIP-seq and ATAC-seq datasets for Drosophila embryos, used in Hug et al. (2017) Cell paper.
  Including 26 datasets, ~ 400 samples.
---










## A. Summary

A total of **26** deposited datasets associated with **12** accession numbers, ~**400** samples in [GEO](https://www.ncbi.nlm.nih.gov/geo), [SRA](https://www.ncbi.nlm.nih.gov/sra) and [flybase](http://flybase.org/) databases.

Raw data of the two papers (Blythe and Wieschaus, 2016; Hug et al., 2017) were download for further analysis. (81 samples, and 110 samples.)

**Note**

+ "14. Barren ChIP-seq from Kc cells" was **not found** in Li et al. (2015) dataset (GSE62904)

+ "ProcessedData", the signal (.bigWig), peak (.bed) files from the submission. 

+ "Plots", repeat the plots shown in the papers (Blythe and Wieschaus, 2016, eLife; Hug et al., 2017, Cell)   

+ "NA" and blank, data not downloaded, or plots not generated.



num   Deposited_data                                           Source                        Identifier                                                            Samples     RawData   ProcessedData   Plots 
----  -------------------------------------------------------  ----------------------------  --------------------------------------------------------------------  ----------  --------  --------------  ------
1*    Hi-C from staged embryos                                 this paper                    ArrayExpress: E-MTAB-4918                                             92          Y         Y               NA    
2     Hi-C from Kc cells                                       Li et al. (2015)              GEO: GSE63515                                                         17                    Y               NA    
3     Hi-C from 16-18hpf embryos                               Sexton et al. (2012)          GEO: GSE34453                                                         13                    Y               NA    
4*    RNA Pol II ChIP-seq reads from injected staged embryos   this paper                    ArrayExpress: E-MTAB-4918                                             18          Y         Y               NA    
5     RNA Pol II ChIP-seq from staged embryos                  Blythe and Wieschaus (2015)   GEO: GSE62925                                                         33                    Y               NA    
6     Histone ChIP-seq from staged embryos                     Li et al. (2014)              GEO: GSE58935                                                         51                    Y               NA    
7     Zld ChIP-seq from 2-3hpf embryos                         Sun et al. (2015)             GEO: GSE65441                                                         32                    Y               NA    
8     Zld ChIP-seq from staged embryos                         Harrison et al. (2011)        GEO: GSE30757                                                         3                     Y               NA    
9*    ATAC-seq from staged embryos                             Blythe and Wieschaus (2016)   GEO: GSE83851                                                         81          Y         Y               NA    
10    BEAF ChIP-seq from Kc cells                              Li et al. (2015)              GEO: GSE62904                                                         2                     Y               NA    
11    CapH2 ChIP-seq from Kc cells                             Van Bortle et al. (2014)      GEO: GSE54529                                                         3                     Y               NA    
12    CBP ChIP-seq from Kc cells                               Li et al. (2015)              GEO: GSE62904                                                         5                     Y               NA    
13    Chromator ChIP-seq from Kc cells                         Li et al. (2015)              GEO: GSE62904                                                         4                     Y               NA    
14    Barren ChIP-seq from Kc cells                            Li et al. (2015)              GEO: GSE62904                                                         Null                  Y               NA    
15    CP190 ChIP-seq from Kc cells                             Li et al. (2015)              GEO: GSE62904                                                         4                     Y               NA    
16    CTCF ChIP-seq from Kc cells                              Van Bortle et al. (2014)      GEO: GSE54529                                                         5                     Y               NA    
17    DREF ChIP-seq from Kc cells                              Li et al. (2015)              GEO: GSE62904                                                         2                     Y               NA    
18    GAF ChIP-seq from Kc cells                               Van Bortle et al. (2014)      GEO: GSE54529                                                         1                     Y               NA    
19    IIC220 ChIP-seq from Kc cells                            Van Bortle et al. (2014)      GEO: GSE54529                                                         4                     Y               NA    
20    L3mbt ChIP-seq from Kc cells                             Li et al. (2015)              GEO: GSE62904                                                         2                     Y               NA    
21    Modmdg4 ChIP-seq from Kc cells                           Li et al. (2015)              GEO: GSE62904                                                         2                     Y               NA    
22    Rad21 ChIP-seq from Kc cells                             Li et al. (2015)              GEO: GSE62904                                                         4                     Y               NA    
23    Su(Hw) ChIP-seq from Kc cells [CP190, dCTCF, BEAF]       Wood et al. (2011)            GEO: GSE30740                                                         14                    Y               NA    
24    TFIIIC ChIP-seq from Kc cells                            Li et al. (2015)              GEO: GSE62904                                                         4                     Y               NA    
25    Z4 ChIP-seq from Kc cells                                Li et al. (2015)              GEO: GSE62904                                                         2                     Y               NA    
26    FlyBase RNA-seq profile                                  Graveley et al. (2011)        http://flybase.org/static_pages/rna-seq/rna-seq_profile_search.html   modENCODE                             NA    


## B. Details


### 1. Hi-C from staged embryos (E-MTAB-4918)

+ Accession Number: [ERP016479](https://www.ncbi.nlm.nih.gov/Traces/study/?acc=ERP016479&o=acc_s%3Aa)

+ Number of samples: 110

+ Library: Hi-C, ChIP-Seq

+ Title: Widespread rearrangement of 3D chromatin organization underlies polycomb-mediated stress-induced silencing

+ Reference: Hug et al. (2017)

> Hug, C. B., Grimaldi, A. G., Kruse, K. & Vaquerizas, J. M. Chromatin Architecture Emerges during Zygotic Genome Activation Independent of Transcription. Cell 169, 216-228.e19 (2017).


+ 1.1 Sample information


 number  run          sample       study     
-------  -----------  -----------  ----------
      1  ERR1533225   ERS1250417   ERP016479 
      2  ERR1533230   ERS1250419   ERP016479 
      3  ERR1533221   ERS1250416   ERP016479 
      4  ERR1533218   ERS1250416   ERP016479 
      5  ERR1533172   ERS1250403   ERP016479 
      6  ERR1533178   ERS1250405   ERP016479 
      7  ERR1533171   ERS1250403   ERP016479 
      8  ERR1533238   ERS1250421   ERP016479 
      9  ERR1533214   ERS1250415   ERP016479 
     10  ERR1533209   ERS1250413   ERP016479 
     11  ERR1533227   ERS1250418   ERP016479 
     12  ERR1533240   ERS1250421   ERP016479 
     13  ERR1533204   ERS1250412   ERP016479 
     14  ERR1533211   ERS1250414   ERP016479 
     15  ERR1533181   ERS1250405   ERP016479 
     16  ERR1533174   ERS1250404   ERP016479 
     17  ERR1533243   ERS1250422   ERP016479 
     18  ERR1533228   ERS1250418   ERP016479 
     19  ERR1533234   ERS1250420   ERP016479 
     20  ERR1533239   ERS1250421   ERP016479 
     21  ERR1533223   ERS1250417   ERP016479 
     22  ERR1533202   ERS1250411   ERP016479 
     23  ERR1533213   ERS1250414   ERP016479 
     24  ERR1533232   ERS1250419   ERP016479 
     25  ERR1533170   ERS1250403   ERP016479 
     26  ERR1533203   ERS1250411   ERP016479 
     27  ERR1533207   ERS1250413   ERP016479 
     28  ERR1533175   ERS1250404   ERP016479 
     29  ERR1533233   ERS1250419   ERP016479 
     30  ERR1533182   ERS1250406   ERP016479 
     31  ERR1533229   ERS1250418   ERP016479 
     32  ERR1533180   ERS1250405   ERP016479 
     33  ERR1533198   ERS1250410   ERP016479 
     34  ERR1533220   ERS1250416   ERP016479 
     35  ERR1533216   ERS1250415   ERP016479 
     36  ERR1533177   ERS1250404   ERP016479 
     37  ERR1533235   ERS1250420   ERP016479 
     38  ERR1533226   ERS1250418   ERP016479 
     39  ERR1533210   ERS1250414   ERP016479 
     40  ERR1533241   ERS1250422   ERP016479 
     41  ERR1533179   ERS1250405   ERP016479 
     42  ERR1533191   ERS1250408   ERP016479 
     43  ERR1533197   ERS1250410   ERP016479 
     44  ERR1533217   ERS1250415   ERP016479 
     45  ERR1533206   ERS1250412   ERP016479 
     46  ERR1533219   ERS1250416   ERP016479 
     47  ERR1533224   ERS1250417   ERP016479 
     48  ERR1533237   ERS1250421   ERP016479 
     49  ERR1533208   ERS1250413   ERP016479 
     50  ERR1533201   ERS1250411   ERP016479 
     51  ERR1533212   ERS1250414   ERP016479 
     52  ERR1533222   ERS1250417   ERP016479 
     53  ERR1533173   ERS1250403   ERP016479 
     54  ERR1533244   ERS1250422   ERP016479 
     55  ERR1533193   ERS1250409   ERP016479 
     56  ERR1533236   ERS1250420   ERP016479 
     57  ERR1533231   ERS1250419   ERP016479 
     58  ERR1533192   ERS1250408   ERP016479 
     59  ERR1533190   ERS1250408   ERP016479 
     60  ERR1533184   ERS1250406   ERP016479 
     61  ERR1533205   ERS1250412   ERP016479 
     62  ERR1533242   ERS1250422   ERP016479 
     63  ERR1533189   ERS1250408   ERP016479 
     64  ERR1533186   ERS1250407   ERP016479 
     65  ERR1533200   ERS1250411   ERP016479 
     66  ERR1533195   ERS1250409   ERP016479 
     67  ERR1533215   ERS1250415   ERP016479 
     68  ERR1533199   ERS1250410   ERP016479 
     69  ERR1533194   ERS1250409   ERP016479 
     70  ERR1533183   ERS1250406   ERP016479 
     71  ERR1533187   ERS1250407   ERP016479 
     72  ERR1533188   ERS1250407   ERP016479 
     73  ERR1533196   ERS1250409   ERP016479 
     74  ERR1533176   ERS1250404   ERP016479 
     75  ERR1533185   ERS1250407   ERP016479 
     76  ERR1912869   ERS1647128   ERP016479 
     77  ERR1912899   ERS1647153   ERP016479 
     78  ERR1912878   ERS1647135   ERP016479 
     79  ERR1912881   ERS1647138   ERP016479 
     80  ERR1912884   ERS1647141   ERP016479 
     81  ERR1912873   ERS1647130   ERP016479 
     82  ERR1912886   ERS1647143   ERP016479 
     83  ERR1912868   ERS1647128   ERP016479 
     84  ERR1912867   ERS1647127   ERP016479 
     85  ERR1912874   ERS1647131   ERP016479 
     86  ERR1912883   ERS1647140   ERP016479 
     87  ERR1912877   ERS1647134   ERP016479 
     88  ERR1912887   ERS1647144   ERP016479 
     89  ERR1912898   ERS1647153   ERP016479 
     90  ERR1912888   ERS1647145   ERP016479 
     91  ERR1912872   ERS1647129   ERP016479 
     92  ERR1912882   ERS1647139   ERP016479 
     93  ERR1912885   ERS1647142   ERP016479 
     94  ERR1912879   ERS1647136   ERP016479 
     95  ERR1912891   ERS1647148   ERP016479 
     96  ERR1912875   ERS1647132   ERP016479 
     97  ERR1912876   ERS1647133   ERP016479 
     98  ERR1912896   ERS1647152   ERP016479 
     99  ERR1912890   ERS1647147   ERP016479 
    100  ERR1912893   ERS1647150   ERP016479 
    101  ERR1912865   ERS1647127   ERP016479 
    102  ERR1912894   ERS1647151   ERP016479 
    103  ERR1912897   ERS1647152   ERP016479 
    104  ERR1912889   ERS1647146   ERP016479 
    105  ERR1912892   ERS1647149   ERP016479 
    106  ERR1912880   ERS1647137   ERP016479 
    107  ERR1912866   ERS1647127   ERP016479 
    108  ERR1912871   ERS1647128   ERP016479 
    109  ERR1912870   ERS1647128   ERP016479 
    110  ERR1912895   ERS1647151   ERP016479 


### 2. Hi-C from Kc cells (GSE63515)

+ Accession Number: GEO: [GSE63515](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE63515)

+ Number of samples: 17

+ Library: Hi-C

+ Title: Widespread rearrangement of 3D chromatin organization underlies polycomb-mediated stress-induced silencing

+ Reference: Li et al. (2015)

> Li, L., Lyu, X., Hou, C., Takenaka, N., Nguyen, H.Q., Ong, C.-T., Cuben˜ asPotts, C., Hu, M., Lei, E.P., Bosco, G., et al. (2015). Widespread rearrangement of 3D chromatin organization underlies polycomb-mediated stress-induced silencing. Mol. Cell 58, 216–231.


+ 2.1 Sample information


 number  gsm          run          title                       study     
-------  -----------  -----------  --------------------------  ----------
      1  GSM1551439   SRR1658523   Hi-C_HS_7_Rep1              SRP050096 
      2  GSM1551440   SRR1658524   Hi-C_HS_8_Rep2              SRP050096 
      3  GSM1551441   SRR1658525   Hi-C_NT5_Rep1               SRP050096 
      4  GSM1551442   SRR1658526   Hi-C_NT_25_Rep2             SRP050096 
      5  GSM1551443   SRR1658527   Hi-C_NT_53_Rep3             SRP050096 
      6  GSM1551444   SRR1658528   Hi-C_NT_89_Rep4             SRP050096 
      7  GSM1551445   SRR1658529   Hi-C_Triptolide6_Rep1       SRP050096 
      8  GSM1551446   SRR1658530   Hi-C_Triptolide_26_Rep2     SRP050096 
      9  GSM1551447   SRR1658531   Hi-C_Triptolide_43_Rep3     SRP050096 
     10  GSM1551448   SRR1658532   Hi-C_Flavopiridol7_Rep1     SRP050096 
     11  GSM1551449   SRR1658533   Hi-C_Flavopiridol_27_Rep2   SRP050096 
     12  GSM1551450   SRR1658534   Hi-C_Flavopiridol_42_Rep3   SRP050096 
     13  GSM1551451   SRR1658535   Hi-C_Rad21NT_91_Rep1        SRP050096 
     14  GSM1551452   SRR1658536   Hi-C_CapH28_Rep1            SRP050096 
     15  GSM1551453   SRR1658537   Hi-C_CapH2_28_Rep2          SRP050096 
     16  GSM1551454   SRR1658538   Hi-C_CapH2_50_Rep3          SRP050096 
     17  GSM1551455   SRR1658539   Hi-C_Rad21HS_92_Rep1        SRP050096 

+ 2.2 Supplementary files


 number  GSM          file                                                                                                                                                  url                                                                                                       
-------  -----------  ----------------------------------------------------------------------------------------------------------------------------------------------------  ----------------------------------------------------------------------------------------------------------
      1  GSM1551439   [GSM1551439_Hi-C_HS_7.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551439/suppl/GSM1551439_Hi-C_HS_7.txt.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551439/suppl/GSM1551439_Hi-C_HS_7.txt.gz            
      2  GSM1551440   [GSM1551440_Hi-C_HS_8.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551440/suppl/GSM1551440_Hi-C_HS_8.txt.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551440/suppl/GSM1551440_Hi-C_HS_8.txt.gz            
      3  GSM1551441   [GSM1551441_Hi-C_NT_15.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551441/suppl/GSM1551441_Hi-C_NT_15.txt.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551441/suppl/GSM1551441_Hi-C_NT_15.txt.gz           
      4  GSM1551442   [GSM1551442_Hi-C_NT_25.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551442/suppl/GSM1551442_Hi-C_NT_25.txt.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551442/suppl/GSM1551442_Hi-C_NT_25.txt.gz           
      5  GSM1551443   [GSM1551443_Hi-C_NT_53.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551443/suppl/GSM1551443_Hi-C_NT_53.txt.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551443/suppl/GSM1551443_Hi-C_NT_53.txt.gz           
      6  GSM1551444   [GSM1551444_Hi-C_NT_89.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551444/suppl/GSM1551444_Hi-C_NT_89.txt.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551444/suppl/GSM1551444_Hi-C_NT_89.txt.gz           
      7  GSM1551445   [GSM1551445_Hi-C_Triptolide_16.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551445/suppl/GSM1551445_Hi-C_Triptolide_16.txt.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551445/suppl/GSM1551445_Hi-C_Triptolide_16.txt.gz   
      8  GSM1551446   [GSM1551446_Hi-C_Triptolide_26.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551446/suppl/GSM1551446_Hi-C_Triptolide_26.txt.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551446/suppl/GSM1551446_Hi-C_Triptolide_26.txt.gz   
      9  GSM1551447   [GSM1551447_Hi-C_Triptolide_43.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551447/suppl/GSM1551447_Hi-C_Triptolide_43.txt.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551447/suppl/GSM1551447_Hi-C_Triptolide_43.txt.gz   
     10  GSM1551448   [GSM1551448_Hi-C_Flavopiridol_17.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551448/suppl/GSM1551448_Hi-C_Flavopiridol_17.txt.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551448/suppl/GSM1551448_Hi-C_Flavopiridol_17.txt.gz 
     11  GSM1551449   [GSM1551449_Hi-C_Flavopiridol_27.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551449/suppl/GSM1551449_Hi-C_Flavopiridol_27.txt.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551449/suppl/GSM1551449_Hi-C_Flavopiridol_27.txt.gz 
     12  GSM1551450   [GSM1551450_Hi-C_Flavopiridol_42.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551450/suppl/GSM1551450_Hi-C_Flavopiridol_42.txt.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551450/suppl/GSM1551450_Hi-C_Flavopiridol_42.txt.gz 
     13  GSM1551451   [GSM1551451_Hi-C_Rad21NT_91.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551451/suppl/GSM1551451_Hi-C_Rad21NT_91.txt.gz)             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551451/suppl/GSM1551451_Hi-C_Rad21NT_91.txt.gz      
     14  GSM1551452   [GSM1551452_Hi-C_CapH2_18.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551452/suppl/GSM1551452_Hi-C_CapH2_18.txt.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551452/suppl/GSM1551452_Hi-C_CapH2_18.txt.gz        
     15  GSM1551453   [GSM1551453_Hi-C_CapH2_28.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551453/suppl/GSM1551453_Hi-C_CapH2_28.txt.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551453/suppl/GSM1551453_Hi-C_CapH2_28.txt.gz        
     16  GSM1551454   [GSM1551454_Hi-C_CapH2_50.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551454/suppl/GSM1551454_Hi-C_CapH2_50.txt.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551454/suppl/GSM1551454_Hi-C_CapH2_50.txt.gz        
     17  GSM1551455   [GSM1551455_Hi-C_Rad21HS_92.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551455/suppl/GSM1551455_Hi-C_Rad21HS_92.txt.gz)             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1551nnn/GSM1551455/suppl/GSM1551455_Hi-C_Rad21HS_92.txt.gz      

### 3. Hi-C from 16-18hpf embryos (GSE34453)

+ Accession Number: GEO: [GSE34453](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE34453)  

+ Number of samples: 2

+ Library: Hi-C

+ Title: Three-dimensional folding and functional organization principles of the Drosophila genome

+ Reference: Sexton et al. (2012)

> Sexton, T., Yaffe, E., Kenigsberg, E., Bantignies, F., Leblanc, B., Hoichman, M., Parrinello, H., Tanay, A., and Cavalli, G. (2012). Three-dimensional folding and functional organization principles of the Drosophila genome. Cell 148, 458–472.


+ 3.1 Sample information


 number  gsm         run         title                            study     
-------  ----------  ----------  -------------------------------  ----------
      1  GSM849421   SRR389756   Pilot simplified Hi-C            SRP009838 
      2  GSM849421   SRR389760   Pilot simplified Hi-C            SRP009838 
      3  GSM849421   SRR389761   Pilot simplified Hi-C            SRP009838 
      4  GSM849421   SRR389758   Pilot simplified Hi-C            SRP009838 
      5  GSM849421   SRR389757   Pilot simplified Hi-C            SRP009838 
      6  GSM849421   SRR389759   Pilot simplified Hi-C            SRP009838 
      7  GSM849422   SRR389765   Deep-sequenced simplified Hi-C   SRP009838 
      8  GSM849422   SRR389763   Deep-sequenced simplified Hi-C   SRP009838 
      9  GSM849422   SRR389768   Deep-sequenced simplified Hi-C   SRP009838 
     10  GSM849422   SRR389762   Deep-sequenced simplified Hi-C   SRP009838 
     11  GSM849422   SRR389767   Deep-sequenced simplified Hi-C   SRP009838 
     12  GSM849422   SRR389766   Deep-sequenced simplified Hi-C   SRP009838 
     13  GSM849422   SRR389764   Deep-sequenced simplified Hi-C   SRP009838 

+ 3.2 Supplementary files


 number  GSM           file                                                                                                                                              url                                                                                                    
-------  ------------  ------------------------------------------------------------------------------------------------------------------------------------------------  -------------------------------------------------------------------------------------------------------
      1  GSM8494211    [GSM849421_10k_bins.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_10k_bins.txt.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_10k_bins.txt.gz             
      2  GSM8494212    [GSM849421_pilot80k_normalized.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_pilot80k_normalized.txt.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_pilot80k_normalized.txt.gz  
      3  GSM8494213    [GSM849421_160k_bins.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_160k_bins.txt.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_160k_bins.txt.gz            
      4  GSM8494214    [GSM849421_20k_bins.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_20k_bins.txt.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_20k_bins.txt.gz             
      5  GSM8494215    [GSM849421_40k_bins.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_40k_bins.txt.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_40k_bins.txt.gz             
      6  GSM8494216    [GSM849421_80k_bins.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_80k_bins.txt.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_80k_bins.txt.gz             
      7  GSM8494217    [GSM849421_pilot10k_normalized.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_pilot10k_normalized.txt.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_pilot10k_normalized.txt.gz  
      8  GSM8494218    [GSM849421_pilot160k_normalized.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_pilot160k_normalized.txt.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_pilot160k_normalized.txt.gz 
      9  GSM8494219    [GSM849421_pilot20k_normalized.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_pilot20k_normalized.txt.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_pilot20k_normalized.txt.gz  
     10  GSM84942110   [GSM849421_pilot40k_normalized.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_pilot40k_normalized.txt.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849421/suppl/GSM849421_pilot40k_normalized.txt.gz  
     11  GSM8494221    [GSM849422_deep10k_normalized.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849422/suppl/GSM849422_deep10k_normalized.txt.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849422/suppl/GSM849422_deep10k_normalized.txt.gz   
     12  GSM8494222    [GSM849422_deep160k_normalized.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849422/suppl/GSM849422_deep160k_normalized.txt.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849422/suppl/GSM849422_deep160k_normalized.txt.gz  
     13  GSM8494223    [GSM849422_deep20k_normalized.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849422/suppl/GSM849422_deep20k_normalized.txt.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849422/suppl/GSM849422_deep20k_normalized.txt.gz   
     14  GSM8494224    [GSM849422_deep40k_normalized.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849422/suppl/GSM849422_deep40k_normalized.txt.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849422/suppl/GSM849422_deep40k_normalized.txt.gz   
     15  GSM8494225    [GSM849422_deep80k_normalized.txt.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849422/suppl/GSM849422_deep80k_normalized.txt.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM849nnn/GSM849422/suppl/GSM849422_deep80k_normalized.txt.gz   

### 4. RNA Pol II ChIP-seq reads from injected staged embryos (E-MTAB-4918)

Details: **see section 1.**

### 5. RNA Pol II ChIP-seq from staged embryos (GSE62925)

+ Accession Number: GEO: [GSE62925](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE62925)  

+ Number of samples: 17

+ Library: ChIP-seq

+ Title: Zygotic genome activation triggers the DNA replication checkpoint at the midblastula transition

+ Reference: Blythe and Wieschaus (2015)

> Blythe, S.A., and Wieschaus, E.F. (2015). Zygotic genome activation triggers the DNA replication checkpoint at the midblastula transition. Cell 160, 1169–1181.


+ 5.1 Sample information


 number  gsm          run          title               study     
-------  -----------  -----------  ------------------  ----------
      1  GSM1536376   SRR1638749   WT_NC12-pSer5       SRP049466 
      2  GSM1536376   SRR1638750   WT_NC12-pSer5       SRP049466 
      3  GSM1536377   SRR1638751   WT_NC12-input       SRP049466 
      4  GSM1536377   SRR1638752   WT_NC12-input       SRP049466 
      5  GSM1536378   SRR1638753   WT_NC13-IgG         SRP049466 
      6  GSM1536379   SRR1638755   WT_NC13-pSer5       SRP049466 
      7  GSM1536379   SRR1638754   WT_NC13-pSer5       SRP049466 
      8  GSM1536380   SRR1638757   WT_NC13-Rpa70       SRP049466 
      9  GSM1536380   SRR1638756   WT_NC13-Rpa70       SRP049466 
     10  GSM1536381   SRR1638758   WT_NC13-input       SRP049466 
     11  GSM1536381   SRR1638759   WT_NC13-input       SRP049466 
     12  GSM1536382   SRR1638760   WT_NC14E-pSer5      SRP049466 
     13  GSM1536382   SRR1638761   WT_NC14E-pSer5      SRP049466 
     14  GSM1536383   SRR1638762   WT_NC14E-input      SRP049466 
     15  GSM1536383   SRR1638763   WT_NC14E-input      SRP049466 
     16  GSM1536384   SRR1638764   WT_NC14M-pSer5      SRP049466 
     17  GSM1536384   SRR1638765   WT_NC14M-pSer5      SRP049466 
     18  GSM1536385   SRR1638766   WT_NC14M-input      SRP049466 
     19  GSM1536385   SRR1638767   WT_NC14M-input      SRP049466 
     20  GSM1536386   SRR1638768   WT_NC14L-pSer5      SRP049466 
     21  GSM1536386   SRR1638769   WT_NC14L-pSer5      SRP049466 
     22  GSM1536387   SRR1638771   WT_NC14L-input      SRP049466 
     23  GSM1536387   SRR1638770   WT_NC14L-input      SRP049466 
     24  GSM1536388   SRR1638773   mei-41_NC13-pSer5   SRP049466 
     25  GSM1536388   SRR1638772   mei-41_NC13-pSer5   SRP049466 
     26  GSM1536389   SRR1638774   mei-41_NC13-IgG     SRP049466 
     27  GSM1536389   SRR1638775   mei-41_NC13-IgG     SRP049466 
     28  GSM1536390   SRR1638776   zld_NC13-pSer5      SRP049466 
     29  GSM1536390   SRR1638777   zld_NC13-pSer5      SRP049466 
     30  GSM1536391   SRR1638778   zld_NC13-Rpa70      SRP049466 
     31  GSM1536391   SRR1638779   zld_NC13-Rpa70      SRP049466 
     32  GSM1536392   SRR1638781   zld_NC13-input      SRP049466 
     33  GSM1536392   SRR1638780   zld_NC13-input      SRP049466 

+ 5.2 Supplementary files


 number  GSM          file                                                                                                                                          url                                                                                                   
-------  -----------  --------------------------------------------------------------------------------------------------------------------------------------------  ------------------------------------------------------------------------------------------------------
      1  GSM1536376   [GSM1536376_WT.NC12.pSer5.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536376/suppl/GSM1536376_WT.NC12.pSer5.bed.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536376/suppl/GSM1536376_WT.NC12.pSer5.bed.gz    
      2  GSM1536379   [GSM1536379_WT.NC13.pSer5.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536379/suppl/GSM1536379_WT.NC13.pSer5.bed.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536379/suppl/GSM1536379_WT.NC13.pSer5.bed.gz    
      3  GSM1536380   [GSM1536380_WT.NC13.Rpa70.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536380/suppl/GSM1536380_WT.NC13.Rpa70.bed.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536380/suppl/GSM1536380_WT.NC13.Rpa70.bed.gz    
      4  GSM1536382   [GSM1536382_WT.NC14E.pSer5.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536382/suppl/GSM1536382_WT.NC14E.pSer5.bed.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536382/suppl/GSM1536382_WT.NC14E.pSer5.bed.gz   
      5  GSM1536384   [GSM1536384_WT.NC14M.pSer5.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536384/suppl/GSM1536384_WT.NC14M.pSer5.bed.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536384/suppl/GSM1536384_WT.NC14M.pSer5.bed.gz   
      6  GSM1536386   [GSM1536386_WT.NC14L.pSer5.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536386/suppl/GSM1536386_WT.NC14L.pSer5.bed.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536386/suppl/GSM1536386_WT.NC14L.pSer5.bed.gz   
      7  GSM1536388   [GSM1536388_mei41.NC13.pSer5.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536388/suppl/GSM1536388_mei41.NC13.pSer5.bed.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536388/suppl/GSM1536388_mei41.NC13.pSer5.bed.gz 
      8  GSM1536390   [GSM1536390_zld.NC13.pSer5.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536390/suppl/GSM1536390_zld.NC13.pSer5.bed.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536390/suppl/GSM1536390_zld.NC13.pSer5.bed.gz   
      9  GSM1536391   [GSM1536391_zld.NC13.Rpa70.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536391/suppl/GSM1536391_zld.NC13.Rpa70.bed.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536391/suppl/GSM1536391_zld.NC13.Rpa70.bed.gz   

### 6. Histone ChIP-seq from staged embryos (GSE58935)

+ Accession Number: GEO: [GSE58935](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE58935)  

+ Number of samples: 51

+ Library: ChIP-seq

+ Title: Establishment of regions of genomic activity during the Drosophila maternal to zygotic transition

+ Reference: Li et al. (2014)

> Li, X.-Y., Harrison, M.M., Villalta, J.E., Kaplan, T., and Eisen, M.B. (2014). Establishment of regions of genomic activity during the Drosophila maternal to zygotic transition. eLife 3, 3.

+ 6.1 Sample information


 number  gsm          run          title                                      study     
-------  -----------  -----------  -----------------------------------------  ----------
      1  GSM1424888   SRR1505698   H4K5ac ChIP-seq at cycle 8                 SRP044032 
      2  GSM1424889   SRR1505699   H4K5ac ChIP-seq cycle 12                   SRP044032 
      3  GSM1424890   SRR1505700   H4K5ac ChIP-seq cycle 14a                  SRP044032 
      4  GSM1424891   SRR1505701   H4K5ac ChIP-seq cycle 14c                  SRP044032 
      5  GSM1424892   SRR1505702   H4K8ac ChIP-seq cycle 8                    SRP044032 
      6  GSM1424893   SRR1505703   H4K8ac ChIP-seq cycle 12                   SRP044032 
      7  GSM1424894   SRR1505704   H4K8ac ChIP-seq cycle 14a                  SRP044032 
      8  GSM1424895   SRR1505705   H4K8ac ChIP-seq cycle 14c                  SRP044032 
      9  GSM1424896   SRR1505706   H3K18ac ChIP-seq cycle 8                   SRP044032 
     10  GSM1424897   SRR1505707   H3K18ac ChIP-seq cycle 12                  SRP044032 
     11  GSM1424898   SRR1505708   H3K18ac ChIP-seq cycle 14a                 SRP044032 
     12  GSM1424899   SRR1505709   H3K18ac ChIP-seq cycle 14c                 SRP044032 
     13  GSM1424900   SRR1505711   H3K27ac ChIP-seq cycle 8                   SRP044032 
     14  GSM1424900   SRR1505710   H3K27ac ChIP-seq cycle 8                   SRP044032 
     15  GSM1424901   SRR1505712   H3K27ac ChIP-seq cycle 12                  SRP044032 
     16  GSM1424902   SRR1505713   H3K27ac ChIP-seq cycle 14a                 SRP044032 
     17  GSM1424903   SRR1505714   H3K27ac ChIP-seq cycle 14c                 SRP044032 
     18  GSM1424904   SRR1505715   H3K4me1 ChIP-seq cycle 8                   SRP044032 
     19  GSM1424905   SRR1505716   H3K4me1 ChIP-seq cycle 12                  SRP044032 
     20  GSM1424906   SRR1505717   H3K4me1 ChIP-seq cycle 14a                 SRP044032 
     21  GSM1424907   SRR1505718   H3K4me1 ChIP-seq cycle 14c                 SRP044032 
     22  GSM1424908   SRR1505719   H3K4me3 ChIP-seq cycle 8                   SRP044032 
     23  GSM1424909   SRR1505720   H3K4me3 ChIP-seq cycle 12                  SRP044032 
     24  GSM1424910   SRR1505721   H3K4me3 ChIP-seq cycle 14a                 SRP044032 
     25  GSM1424911   SRR1505722   H3K4me3 ChIP-seq cycle 14c                 SRP044032 
     26  GSM1424912   SRR1505723   H3K9ac ChIP-seq cycle 8                    SRP044032 
     27  GSM1424913   SRR1505724   H3K9ac ChIP-seq cycle 12                   SRP044032 
     28  GSM1424914   SRR1505725   H3K9ac ChIP-seq cycle 14a                  SRP044032 
     29  GSM1424915   SRR1505726   H3K9ac ChIP-seq cycle 14c                  SRP044032 
     30  GSM1424916   SRR1505727   H3K27me3 ChIP-seq cycle 12                 SRP044032 
     31  GSM1424917   SRR1505728   H3K27me3 ChIP-seq cycle 14a                SRP044032 
     32  GSM1424918   SRR1505729   H3K27me3 ChIP-seq cycle 14c                SRP044032 
     33  GSM1424919   SRR1505730   H3K36me3 ChIP-seq cycle 12                 SRP044032 
     34  GSM1424920   SRR1505731   H3K36me3 ChIP-seq cycle 14a                SRP044032 
     35  GSM1424921   SRR1505732   H3K36me3 ChIP-seq cycle 14c                SRP044032 
     36  GSM1424922   SRR1505733   H3 ChIP-seq cycle 8                        SRP044032 
     37  GSM1424923   SRR1505734   H3 ChIP-seq cycle 12                       SRP044032 
     38  GSM1424924   SRR1505735   H3 ChIP-seq cycle 14a                      SRP044032 
     39  GSM1424925   SRR1505736   H3 ChIP-seq cycle 14c                      SRP044032 
     40  GSM1424926   SRR1505737   Input for cycle 8 ChIP-seq samples         SRP044032 
     41  GSM1424927   SRR1505738   Input for cycle 12 ChIP-seq samples        SRP044032 
     42  GSM1424928   SRR1505739   Input for cycle 14a ChIP-seq samples       SRP044032 
     43  GSM1424929   SRR1505740   Input for cycle 14c ChIP-seq samples       SRP044032 
     44  GSM1429650   SRR1508419   Zelda ChIP-seq in wt embryos               SRP044032 
     45  GSM1429651   SRR1508420   Zelda ChIP-seq in zelda mutant embryos     SRP044032 
     46  GSM1429652   SRR1508421   H3 ChIP-seq in wt embryos                  SRP044032 
     47  GSM1429653   SRR1508422   H3 ChIP-seq in zelda mutant embryos        SRP044032 
     48  GSM1429654   SRR1508423   H3K4me1 ChIP-seq in wt embryos             SRP044032 
     49  GSM1429655   SRR1508424   H3K4me1 ChIP-seq in zelda mutant embryos   SRP044032 
     50  GSM1429656   SRR1508425   H3K18ac ChIP-seq in wt embryos             SRP044032 
     51  GSM1429657   SRR1508426   H3K18ac ChIP-seq in zelda mutant embryos   SRP044032 

+ 6.2 Supplementary files


 number  GSM           file                                                                                                                                                          url                                                                                                           
-------  ------------  ------------------------------------------------------------------------------------------------------------------------------------------------------------  --------------------------------------------------------------------------------------------------------------
      1  GSM14248881   [GSM1424888_Dmel-H4K5ac-c8-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424888/suppl/GSM1424888_Dmel-H4K5ac-c8-peaks.xls.gz)           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424888/suppl/GSM1424888_Dmel-H4K5ac-c8-peaks.xls.gz     
      2  GSM14248882   [GSM1424888_Dmel-H4K5ac-c8.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424888/suppl/GSM1424888_Dmel-H4K5ac-c8.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424888/suppl/GSM1424888_Dmel-H4K5ac-c8.wig.gz           
      3  GSM14248891   [GSM1424889_Dmel-H4K5ac-c12-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424889/suppl/GSM1424889_Dmel-H4K5ac-c12-peaks.xls.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424889/suppl/GSM1424889_Dmel-H4K5ac-c12-peaks.xls.gz    
      4  GSM14248892   [GSM1424889_Dmel-H4K5ac-c12.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424889/suppl/GSM1424889_Dmel-H4K5ac-c12.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424889/suppl/GSM1424889_Dmel-H4K5ac-c12.wig.gz          
      5  GSM14248901   [GSM1424890_Dmel-H4K5ac-c14a-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424890/suppl/GSM1424890_Dmel-H4K5ac-c14a-peaks.xls.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424890/suppl/GSM1424890_Dmel-H4K5ac-c14a-peaks.xls.gz   
      6  GSM14248902   [GSM1424890_Dmel-H4K5ac-c14a.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424890/suppl/GSM1424890_Dmel-H4K5ac-c14a.wig.gz)                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424890/suppl/GSM1424890_Dmel-H4K5ac-c14a.wig.gz         
      7  GSM14248911   [GSM1424891_Dmel-H4K5ac-c14c-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424891/suppl/GSM1424891_Dmel-H4K5ac-c14c-peaks.xls.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424891/suppl/GSM1424891_Dmel-H4K5ac-c14c-peaks.xls.gz   
      8  GSM14248912   [GSM1424891_Dmel-H4K5ac-c14c.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424891/suppl/GSM1424891_Dmel-H4K5ac-c14c.wig.gz)                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424891/suppl/GSM1424891_Dmel-H4K5ac-c14c.wig.gz         
      9  GSM14248921   [GSM1424892_Dmel-H4K8ac-c8-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424892/suppl/GSM1424892_Dmel-H4K8ac-c8-peaks.xls.gz)           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424892/suppl/GSM1424892_Dmel-H4K8ac-c8-peaks.xls.gz     
     10  GSM14248922   [GSM1424892_Dmel-H4K8ac-c8.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424892/suppl/GSM1424892_Dmel-H4K8ac-c8.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424892/suppl/GSM1424892_Dmel-H4K8ac-c8.wig.gz           
     11  GSM14248931   [GSM1424893_Dmel-H4K8ac-c12-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424893/suppl/GSM1424893_Dmel-H4K8ac-c12-peaks.xls.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424893/suppl/GSM1424893_Dmel-H4K8ac-c12-peaks.xls.gz    
     12  GSM14248932   [GSM1424893_Dmel-H4K8ac-c12.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424893/suppl/GSM1424893_Dmel-H4K8ac-c12.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424893/suppl/GSM1424893_Dmel-H4K8ac-c12.wig.gz          
     13  GSM14248941   [GSM1424894_Dmel-H4K8ac-c14a-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424894/suppl/GSM1424894_Dmel-H4K8ac-c14a-peaks.xls.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424894/suppl/GSM1424894_Dmel-H4K8ac-c14a-peaks.xls.gz   
     14  GSM14248942   [GSM1424894_Dmel-H4K8ac-c14a.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424894/suppl/GSM1424894_Dmel-H4K8ac-c14a.wig.gz)                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424894/suppl/GSM1424894_Dmel-H4K8ac-c14a.wig.gz         
     15  GSM14248951   [GSM1424895_Dmel-H4K8ac-c14c-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424895/suppl/GSM1424895_Dmel-H4K8ac-c14c-peaks.xls.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424895/suppl/GSM1424895_Dmel-H4K8ac-c14c-peaks.xls.gz   
     16  GSM14248952   [GSM1424895_Dmel-H4K8ac-c14c.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424895/suppl/GSM1424895_Dmel-H4K8ac-c14c.wig.gz)                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424895/suppl/GSM1424895_Dmel-H4K8ac-c14c.wig.gz         
     17  GSM14248961   [GSM1424896_Dmel-H3K18ac-c8-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424896/suppl/GSM1424896_Dmel-H3K18ac-c8-peaks.xls.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424896/suppl/GSM1424896_Dmel-H3K18ac-c8-peaks.xls.gz    
     18  GSM14248962   [GSM1424896_Dmel-H3K18ac-c8.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424896/suppl/GSM1424896_Dmel-H3K18ac-c8.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424896/suppl/GSM1424896_Dmel-H3K18ac-c8.wig.gz          
     19  GSM14248971   [GSM1424897_Dmel-H3K18ac-c12-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424897/suppl/GSM1424897_Dmel-H3K18ac-c12-peaks.xls.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424897/suppl/GSM1424897_Dmel-H3K18ac-c12-peaks.xls.gz   
     20  GSM14248972   [GSM1424897_Dmel-H3K18ac-c12.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424897/suppl/GSM1424897_Dmel-H3K18ac-c12.wig.gz)                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424897/suppl/GSM1424897_Dmel-H3K18ac-c12.wig.gz         
     21  GSM14248981   [GSM1424898_Dmel-H3K18ac-c14a-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424898/suppl/GSM1424898_Dmel-H3K18ac-c14a-peaks.xls.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424898/suppl/GSM1424898_Dmel-H3K18ac-c14a-peaks.xls.gz  
     22  GSM14248982   [GSM1424898_Dmel-H3K18ac-c14a.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424898/suppl/GSM1424898_Dmel-H3K18ac-c14a.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424898/suppl/GSM1424898_Dmel-H3K18ac-c14a.wig.gz        
     23  GSM14248991   [GSM1424899_Dmel-H3K18ac-c14c-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424899/suppl/GSM1424899_Dmel-H3K18ac-c14c-peaks.xls.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424899/suppl/GSM1424899_Dmel-H3K18ac-c14c-peaks.xls.gz  
     24  GSM14248992   [GSM1424899_Dmel-H3K18ac-c14c.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424899/suppl/GSM1424899_Dmel-H3K18ac-c14c.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424899/suppl/GSM1424899_Dmel-H3K18ac-c14c.wig.gz        
     25  GSM14249001   [GSM1424900_Dmel-H3K27ac-c8-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424900/suppl/GSM1424900_Dmel-H3K27ac-c8-peaks.xls.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424900/suppl/GSM1424900_Dmel-H3K27ac-c8-peaks.xls.gz    
     26  GSM14249002   [GSM1424900_Dmel-H3K27ac-c8.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424900/suppl/GSM1424900_Dmel-H3K27ac-c8.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424900/suppl/GSM1424900_Dmel-H3K27ac-c8.wig.gz          
     27  GSM14249011   [GSM1424901_Dmel-H3K27ac-c12-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424901/suppl/GSM1424901_Dmel-H3K27ac-c12-peaks.xls.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424901/suppl/GSM1424901_Dmel-H3K27ac-c12-peaks.xls.gz   
     28  GSM14249012   [GSM1424901_Dmel-H3K27ac-c12.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424901/suppl/GSM1424901_Dmel-H3K27ac-c12.wig.gz)                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424901/suppl/GSM1424901_Dmel-H3K27ac-c12.wig.gz         
     29  GSM14249021   [GSM1424902_Dmel-H3K27ac-c14a-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424902/suppl/GSM1424902_Dmel-H3K27ac-c14a-peaks.xls.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424902/suppl/GSM1424902_Dmel-H3K27ac-c14a-peaks.xls.gz  
     30  GSM14249022   [GSM1424902_Dmel-H3K27ac-c14a.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424902/suppl/GSM1424902_Dmel-H3K27ac-c14a.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424902/suppl/GSM1424902_Dmel-H3K27ac-c14a.wig.gz        
     31  GSM14249031   [GSM1424903_Dmel-H3K27ac-c14c-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424903/suppl/GSM1424903_Dmel-H3K27ac-c14c-peaks.xls.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424903/suppl/GSM1424903_Dmel-H3K27ac-c14c-peaks.xls.gz  
     32  GSM14249032   [GSM1424903_Dmel-H3K27ac-c14c.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424903/suppl/GSM1424903_Dmel-H3K27ac-c14c.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424903/suppl/GSM1424903_Dmel-H3K27ac-c14c.wig.gz        
     33  GSM14249041   [GSM1424904_Dmel-H3K4me1-c8-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424904/suppl/GSM1424904_Dmel-H3K4me1-c8-peaks.xls.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424904/suppl/GSM1424904_Dmel-H3K4me1-c8-peaks.xls.gz    
     34  GSM14249042   [GSM1424904_Dmel-H3K4me1-c8.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424904/suppl/GSM1424904_Dmel-H3K4me1-c8.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424904/suppl/GSM1424904_Dmel-H3K4me1-c8.wig.gz          
     35  GSM14249051   [GSM1424905_Dmel-H3K4me1-c12-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424905/suppl/GSM1424905_Dmel-H3K4me1-c12-peaks.xls.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424905/suppl/GSM1424905_Dmel-H3K4me1-c12-peaks.xls.gz   
     36  GSM14249052   [GSM1424905_Dmel-H3K4me1-c12.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424905/suppl/GSM1424905_Dmel-H3K4me1-c12.wig.gz)                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424905/suppl/GSM1424905_Dmel-H3K4me1-c12.wig.gz         
     37  GSM14249061   [GSM1424906_Dmel-H3K4me1-c14a-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424906/suppl/GSM1424906_Dmel-H3K4me1-c14a-peaks.xls.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424906/suppl/GSM1424906_Dmel-H3K4me1-c14a-peaks.xls.gz  
     38  GSM14249062   [GSM1424906_Dmel-H3K4me1-c14a.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424906/suppl/GSM1424906_Dmel-H3K4me1-c14a.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424906/suppl/GSM1424906_Dmel-H3K4me1-c14a.wig.gz        
     39  GSM14249071   [GSM1424907_Dmel-H3K4me1-c14c-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424907/suppl/GSM1424907_Dmel-H3K4me1-c14c-peaks.xls.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424907/suppl/GSM1424907_Dmel-H3K4me1-c14c-peaks.xls.gz  
     40  GSM14249072   [GSM1424907_Dmel-H3K4me1-c14c.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424907/suppl/GSM1424907_Dmel-H3K4me1-c14c.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424907/suppl/GSM1424907_Dmel-H3K4me1-c14c.wig.gz        
     41  GSM14249081   [GSM1424908_Dmel-H3K4me3-c8-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424908/suppl/GSM1424908_Dmel-H3K4me3-c8-peaks.xls.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424908/suppl/GSM1424908_Dmel-H3K4me3-c8-peaks.xls.gz    
     42  GSM14249082   [GSM1424908_Dmel-H3K4me3-c8.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424908/suppl/GSM1424908_Dmel-H3K4me3-c8.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424908/suppl/GSM1424908_Dmel-H3K4me3-c8.wig.gz          
     43  GSM14249091   [GSM1424909_Dmel-H3K4me3-c12-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424909/suppl/GSM1424909_Dmel-H3K4me3-c12-peaks.xls.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424909/suppl/GSM1424909_Dmel-H3K4me3-c12-peaks.xls.gz   
     44  GSM14249092   [GSM1424909_Dmel-H3K4me3-c12.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424909/suppl/GSM1424909_Dmel-H3K4me3-c12.wig.gz)                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424909/suppl/GSM1424909_Dmel-H3K4me3-c12.wig.gz         
     45  GSM14249101   [GSM1424910_Dmel-H3K4me3-c14a-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424910/suppl/GSM1424910_Dmel-H3K4me3-c14a-peaks.xls.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424910/suppl/GSM1424910_Dmel-H3K4me3-c14a-peaks.xls.gz  
     46  GSM14249102   [GSM1424910_Dmel-H3K4me3-c14a.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424910/suppl/GSM1424910_Dmel-H3K4me3-c14a.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424910/suppl/GSM1424910_Dmel-H3K4me3-c14a.wig.gz        
     47  GSM14249111   [GSM1424911_Dmel-H3K4me3-c14c-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424911/suppl/GSM1424911_Dmel-H3K4me3-c14c-peaks.xls.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424911/suppl/GSM1424911_Dmel-H3K4me3-c14c-peaks.xls.gz  
     48  GSM14249112   [GSM1424911_Dmel-H3K4me3-c14c.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424911/suppl/GSM1424911_Dmel-H3K4me3-c14c.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424911/suppl/GSM1424911_Dmel-H3K4me3-c14c.wig.gz        
     49  GSM14249121   [GSM1424912_Dmel-H3K9ac-c8-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424912/suppl/GSM1424912_Dmel-H3K9ac-c8-peaks.xls.gz)           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424912/suppl/GSM1424912_Dmel-H3K9ac-c8-peaks.xls.gz     
     50  GSM14249122   [GSM1424912_Dmel-H3K9ac-c8.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424912/suppl/GSM1424912_Dmel-H3K9ac-c8.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424912/suppl/GSM1424912_Dmel-H3K9ac-c8.wig.gz           
     51  GSM14249131   [GSM1424913_Dmel-H3K9ac-c12-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424913/suppl/GSM1424913_Dmel-H3K9ac-c12-peaks.xls.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424913/suppl/GSM1424913_Dmel-H3K9ac-c12-peaks.xls.gz    
     52  GSM14249132   [GSM1424913_Dmel-H3K9ac-c12.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424913/suppl/GSM1424913_Dmel-H3K9ac-c12.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424913/suppl/GSM1424913_Dmel-H3K9ac-c12.wig.gz          
     53  GSM14249141   [GSM1424914_Dmel-H3K9ac-c14a-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424914/suppl/GSM1424914_Dmel-H3K9ac-c14a-peaks.xls.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424914/suppl/GSM1424914_Dmel-H3K9ac-c14a-peaks.xls.gz   
     54  GSM14249142   [GSM1424914_Dmel-H3K9ac-c14a.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424914/suppl/GSM1424914_Dmel-H3K9ac-c14a.wig.gz)                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424914/suppl/GSM1424914_Dmel-H3K9ac-c14a.wig.gz         
     55  GSM14249151   [GSM1424915_Dmel-H3K9ac-c14c-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424915/suppl/GSM1424915_Dmel-H3K9ac-c14c-peaks.xls.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424915/suppl/GSM1424915_Dmel-H3K9ac-c14c-peaks.xls.gz   
     56  GSM14249152   [GSM1424915_Dmel-H3K9ac-c14c.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424915/suppl/GSM1424915_Dmel-H3K9ac-c14c.wig.gz)                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424915/suppl/GSM1424915_Dmel-H3K9ac-c14c.wig.gz         
     57  GSM14249161   [GSM1424916_Dmel-H3K27me3-c12-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424916/suppl/GSM1424916_Dmel-H3K27me3-c12-peaks.xls.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424916/suppl/GSM1424916_Dmel-H3K27me3-c12-peaks.xls.gz  
     58  GSM14249162   [GSM1424916_Dmel-H3K27me3-c12.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424916/suppl/GSM1424916_Dmel-H3K27me3-c12.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424916/suppl/GSM1424916_Dmel-H3K27me3-c12.wig.gz        
     59  GSM14249171   [GSM1424917_Dmel-H3K27me3-c14a-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424917/suppl/GSM1424917_Dmel-H3K27me3-c14a-peaks.xls.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424917/suppl/GSM1424917_Dmel-H3K27me3-c14a-peaks.xls.gz 
     60  GSM14249172   [GSM1424917_Dmel-H3K27me3-c14a.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424917/suppl/GSM1424917_Dmel-H3K27me3-c14a.wig.gz)               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424917/suppl/GSM1424917_Dmel-H3K27me3-c14a.wig.gz       
     61  GSM14249181   [GSM1424918_Dmel-H3K27me3-c14c-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424918/suppl/GSM1424918_Dmel-H3K27me3-c14c-peaks.xls.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424918/suppl/GSM1424918_Dmel-H3K27me3-c14c-peaks.xls.gz 
     62  GSM14249182   [GSM1424918_Dmel-H3K27me3-c14c.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424918/suppl/GSM1424918_Dmel-H3K27me3-c14c.wig.gz)               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424918/suppl/GSM1424918_Dmel-H3K27me3-c14c.wig.gz       
     63  GSM14249191   [GSM1424919_Dmel-H3K36me3-c12-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424919/suppl/GSM1424919_Dmel-H3K36me3-c12-peaks.xls.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424919/suppl/GSM1424919_Dmel-H3K36me3-c12-peaks.xls.gz  
     64  GSM14249192   [GSM1424919_Dmel-H3K36me3-c12.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424919/suppl/GSM1424919_Dmel-H3K36me3-c12.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424919/suppl/GSM1424919_Dmel-H3K36me3-c12.wig.gz        
     65  GSM14249201   [GSM1424920_Dmel-H3K36me3-c14a-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424920/suppl/GSM1424920_Dmel-H3K36me3-c14a-peaks.xls.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424920/suppl/GSM1424920_Dmel-H3K36me3-c14a-peaks.xls.gz 
     66  GSM14249202   [GSM1424920_Dmel-H3K36me3-c14a.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424920/suppl/GSM1424920_Dmel-H3K36me3-c14a.wig.gz)               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424920/suppl/GSM1424920_Dmel-H3K36me3-c14a.wig.gz       
     67  GSM14249211   [GSM1424921_Dmel-H3K36me3-c14c-peaks.xls.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424921/suppl/GSM1424921_Dmel-H3K36me3-c14c-peaks.xls.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424921/suppl/GSM1424921_Dmel-H3K36me3-c14c-peaks.xls.gz 
     68  GSM14249212   [GSM1424921_Dmel-H3K36me3-c14c.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424921/suppl/GSM1424921_Dmel-H3K36me3-c14c.wig.gz)               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424921/suppl/GSM1424921_Dmel-H3K36me3-c14c.wig.gz       
     69  GSM1424922    [GSM1424922_Dmel-H3-c8.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424922/suppl/GSM1424922_Dmel-H3-c8.wig.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424922/suppl/GSM1424922_Dmel-H3-c8.wig.gz               
     70  GSM1424923    [GSM1424923_Dmel-H3-c12.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424923/suppl/GSM1424923_Dmel-H3-c12.wig.gz)                             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424923/suppl/GSM1424923_Dmel-H3-c12.wig.gz              
     71  GSM1424924    [GSM1424924_Dmel-H3-c14a.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424924/suppl/GSM1424924_Dmel-H3-c14a.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424924/suppl/GSM1424924_Dmel-H3-c14a.wig.gz             
     72  GSM1424925    [GSM1424925_Dmel-H3-c14c.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424925/suppl/GSM1424925_Dmel-H3-c14c.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424925/suppl/GSM1424925_Dmel-H3-c14c.wig.gz             
     73  GSM1424926    [GSM1424926_Dmel-input-c8.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424926/suppl/GSM1424926_Dmel-input-c8.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424926/suppl/GSM1424926_Dmel-input-c8.wig.gz            
     74  GSM1424927    [GSM1424927_Dmel-input-c12.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424927/suppl/GSM1424927_Dmel-input-c12.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424927/suppl/GSM1424927_Dmel-input-c12.wig.gz           
     75  GSM1424928    [GSM1424928_Dmel-input-c14a.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424928/suppl/GSM1424928_Dmel-input-c14a.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424928/suppl/GSM1424928_Dmel-input-c14a.wig.gz          
     76  GSM1424929    [GSM1424929_Dmel-input-c14c.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424929/suppl/GSM1424929_Dmel-input-c14c.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1424nnn/GSM1424929/suppl/GSM1424929_Dmel-input-c14c.wig.gz          
     77  GSM1429650    [GSM1429650_Dmel-wt-ZLD.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429650/suppl/GSM1429650_Dmel-wt-ZLD.wig.gz)                             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429650/suppl/GSM1429650_Dmel-wt-ZLD.wig.gz              
     78  GSM1429651    [GSM1429651_Dmel-ZLDm-ZLD.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429651/suppl/GSM1429651_Dmel-ZLDm-ZLD.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429651/suppl/GSM1429651_Dmel-ZLDm-ZLD.wig.gz            
     79  GSM1429652    [GSM1429652_Dmel-wt-H3.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429652/suppl/GSM1429652_Dmel-wt-H3.wig.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429652/suppl/GSM1429652_Dmel-wt-H3.wig.gz               
     80  GSM1429653    [GSM1429653_Dmel-ZLDm-H3.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429653/suppl/GSM1429653_Dmel-ZLDm-H3.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429653/suppl/GSM1429653_Dmel-ZLDm-H3.wig.gz             
     81  GSM1429654    [GSM1429654_Dmel-wt-H3K4me1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429654/suppl/GSM1429654_Dmel-wt-H3K4me1.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429654/suppl/GSM1429654_Dmel-wt-H3K4me1.wig.gz          
     82  GSM1429655    [GSM1429655_Dmel-ZLDm-H3K4me1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429655/suppl/GSM1429655_Dmel-ZLDm-H3K4me1.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429655/suppl/GSM1429655_Dmel-ZLDm-H3K4me1.wig.gz        
     83  GSM1429656    [GSM1429656_Dmel-wt-H3K18ac.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429656/suppl/GSM1429656_Dmel-wt-H3K18ac.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429656/suppl/GSM1429656_Dmel-wt-H3K18ac.wig.gz          
     84  GSM1429657    [GSM1429657_Dmel-ZLDm-H3K18ac.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429657/suppl/GSM1429657_Dmel-ZLDm-H3K18ac.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1429nnn/GSM1429657/suppl/GSM1429657_Dmel-ZLDm-H3K18ac.wig.gz        

### 7. Zld ChIP-seq from 2-3hpf embryos (GSE65441)

+ Accession Number: GEO: [GSE65441](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE65441)  

+ Number of samples: 32

+ Library: ChIP-seq

+ Title: Zelda overcomes the high intrinsic nucleosome barrier at enhancers during Drosophila zygotic genome activation

+ Reference: Sun et al. (2015)

> Sun, Y., Nien, C.-Y., Chen, K., Liu, H.-Y., Johnston, J., Zeitlinger, J., and Rushlow, C. (2015). Zelda overcomes the high intrinsic nucleosome barrier at enhancers during Drosophila zygotic genome activation. Genome Res. 25, 1703–1714.

+ 7.1 Sample information


 number  gsm          run          title                                  study     
-------  -----------  -----------  -------------------------------------  ----------
      1  GSM1596215   SRR1779547   2-3h wt Zld ChIP-seq rep1              SRP052975 
      2  GSM1596216   SRR1779548   2-3h wt Zld ChIP-seq rep1 input        SRP052975 
      3  GSM1596217   SRR1779549   2-3h gd7 Zld ChIP-seq rep1             SRP052975 
      4  GSM1596218   SRR1779550   2-3h gd7 Zld ChIP-seq rep1 input       SRP052975 
      5  GSM1596219   SRR1779551   2-3h wt Zld ChIP-seq rep2              SRP052975 
      6  GSM1596220   SRR1779552   2-3h wt Zld ChIP-seq rep2 input        SRP052975 
      7  GSM1596221   SRR1779553   2-3h gd7 Zld ChIP-seq rep2             SRP052975 
      8  GSM1596222   SRR1779554   2-3h gd7 Zld ChIP-seq rep2 input       SRP052975 
      9  GSM1596223   SRR1779555   2-3h wt Dl ChIP-seq rep1               SRP052975 
     10  GSM1596224   SRR1779556   2-3h wt Dl ChIP-seq rep1 input         SRP052975 
     11  GSM1596225   SRR1779557   2-3h zld- Dl ChIP-seq rep1             SRP052975 
     12  GSM1596226   SRR1779558   2-3h zld- Dl ChIP-seq rep1 input       SRP052975 
     13  GSM1596227   SRR1779559   2-3h wt Dl ChIP-seq rep2               SRP052975 
     14  GSM1596228   SRR1779560   2-3h wt Dl ChIP-seq rep2 input         SRP052975 
     15  GSM1596229   SRR1779561   2-3h zld- Dl ChIP-seq rep2             SRP052975 
     16  GSM1596230   SRR1779562   2-3h zld- Dl ChIP-seq rep2 input       SRP052975 
     17  GSM1596231   SRR1779563   2-3h wt Pol II ChIP-seq rep1           SRP052975 
     18  GSM1596232   SRR1779564   2-3h wt Pol II ChIP-seq rep1 input     SRP052975 
     19  GSM1596233   SRR1779565   2-3h zld- Pol II ChIP-seq rep1         SRP052975 
     20  GSM1596234   SRR1779566   2-3h zld- Pol II ChIP-seq rep1 input   SRP052975 
     21  GSM1596235   SRR1779567   2-3h wt Pol II ChIP-seq rep2           SRP052975 
     22  GSM1596236   SRR1779568   2-3h wt Pol II ChIP-seq rep2 input     SRP052975 
     23  GSM1596237   SRR1779569   2-3h zld- Pol II ChIP-seq rep2         SRP052975 
     24  GSM1596238   SRR1779570   2-3h zld- Pol II ChIP-seq rep2 input   SRP052975 
     25  GSM1596239   SRR1779571   2-3h wt MNase-seq rep1                 SRP052975 
     26  GSM1596240   SRR1779572   2-3h zld- MNase-seq rep1               SRP052975 
     27  GSM1596241   SRR1779573   2-3h wt MNase-seq rep2                 SRP052975 
     28  GSM1596242   SRR1779574   2-3h zld- MNase-seq rep2               SRP052975 
     29  GSM1596243   SRR1779575   2-4h wt MNase-seq rep1                 SRP052975 
     30  GSM1596244   SRR1779576   2-4h gd7 MNase-seq rep1                SRP052975 
     31  GSM1596245   SRR1779577   2-4h wt MNase-seq rep2                 SRP052975 
     32  GSM1596246   SRR1779578   2-4h gd7 MNase-seq rep2                SRP052975 

+ 7.2 Supplementary files


 number  GSM          file                                                                                                                                                                          url                                                                                                                   
-------  -----------  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------  ----------------------------------------------------------------------------------------------------------------------
      1  GSM1596231   [GSM1596231_2-3h_wt_Pol_II_ChIP-seq_rep1.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596231/suppl/GSM1596231_2-3h_wt_Pol_II_ChIP-seq_rep1.bw)                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596231/suppl/GSM1596231_2-3h_wt_Pol_II_ChIP-seq_rep1.bw         
      2  GSM1596232   [GSM1596232_2-3h_wt_Pol_II_ChIP-seq_rep1_input.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596232/suppl/GSM1596232_2-3h_wt_Pol_II_ChIP-seq_rep1_input.bw)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596232/suppl/GSM1596232_2-3h_wt_Pol_II_ChIP-seq_rep1_input.bw   
      3  GSM1596233   [GSM1596233_2-3h_zld-_Pol_II_ChIP-seq_rep1.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596233/suppl/GSM1596233_2-3h_zld-_Pol_II_ChIP-seq_rep1.bw)               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596233/suppl/GSM1596233_2-3h_zld-_Pol_II_ChIP-seq_rep1.bw       
      4  GSM1596234   [GSM1596234_2-3h_zld-_Pol_II_ChIP-seq_rep1_input.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596234/suppl/GSM1596234_2-3h_zld-_Pol_II_ChIP-seq_rep1_input.bw)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596234/suppl/GSM1596234_2-3h_zld-_Pol_II_ChIP-seq_rep1_input.bw 
      5  GSM1596235   [GSM1596235_2-3h_wt_Pol_II_ChIP-seq_rep2.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596235/suppl/GSM1596235_2-3h_wt_Pol_II_ChIP-seq_rep2.bw)                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596235/suppl/GSM1596235_2-3h_wt_Pol_II_ChIP-seq_rep2.bw         
      6  GSM1596236   [GSM1596236_2-3h_wt_Pol_II_ChIP-seq_rep2_input.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596236/suppl/GSM1596236_2-3h_wt_Pol_II_ChIP-seq_rep2_input.bw)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596236/suppl/GSM1596236_2-3h_wt_Pol_II_ChIP-seq_rep2_input.bw   
      7  GSM1596237   [GSM1596237_2-3h_zld-_Pol_II_ChIP-seq_rep2.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596237/suppl/GSM1596237_2-3h_zld-_Pol_II_ChIP-seq_rep2.bw)               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596237/suppl/GSM1596237_2-3h_zld-_Pol_II_ChIP-seq_rep2.bw       
      8  GSM1596238   [GSM1596238_2-3h_zld-_Pol_II_ChIP-seq_rep2_input.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596238/suppl/GSM1596238_2-3h_zld-_Pol_II_ChIP-seq_rep2_input.bw)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596238/suppl/GSM1596238_2-3h_zld-_Pol_II_ChIP-seq_rep2_input.bw 
      9  GSM1596239   [GSM1596239_2-3h_wt_MNase-seq_rep1.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596239/suppl/GSM1596239_2-3h_wt_MNase-seq_rep1.bw)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596239/suppl/GSM1596239_2-3h_wt_MNase-seq_rep1.bw               
     10  GSM1596240   [GSM1596240_2-3h_zld-_MNase-seq_rep1.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596240/suppl/GSM1596240_2-3h_zld-_MNase-seq_rep1.bw)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596240/suppl/GSM1596240_2-3h_zld-_MNase-seq_rep1.bw             
     11  GSM1596241   [GSM1596241_2-3h_wt_MNase-seq_rep2.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596241/suppl/GSM1596241_2-3h_wt_MNase-seq_rep2.bw)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596241/suppl/GSM1596241_2-3h_wt_MNase-seq_rep2.bw               
     12  GSM1596242   [GSM1596242_2-3h_zld-_MNase-seq_rep2.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596242/suppl/GSM1596242_2-3h_zld-_MNase-seq_rep2.bw)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596242/suppl/GSM1596242_2-3h_zld-_MNase-seq_rep2.bw             
     13  GSM1596243   [GSM1596243_2-4h_wt_MNase-seq_rep1.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596243/suppl/GSM1596243_2-4h_wt_MNase-seq_rep1.bw)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596243/suppl/GSM1596243_2-4h_wt_MNase-seq_rep1.bw               
     14  GSM1596244   [GSM1596244_2-4h_gd7_MNase-seq_rep1.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596244/suppl/GSM1596244_2-4h_gd7_MNase-seq_rep1.bw)                             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596244/suppl/GSM1596244_2-4h_gd7_MNase-seq_rep1.bw              
     15  GSM1596245   [GSM1596245_2-4h_wt_MNase-seq_rep2.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596245/suppl/GSM1596245_2-4h_wt_MNase-seq_rep2.bw)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596245/suppl/GSM1596245_2-4h_wt_MNase-seq_rep2.bw               
     16  GSM1596246   [GSM1596246_2-4h_gd7_MNase-seq_rep2.bw](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596246/suppl/GSM1596246_2-4h_gd7_MNase-seq_rep2.bw)                             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1596nnn/GSM1596246/suppl/GSM1596246_2-4h_gd7_MNase-seq_rep2.bw              

### 8. Zld ChIP-seq from staged embryos (GSE30757)

+ Accession Number: GEO: [GSE30757](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE30757)  

+ Number of samples: 3

+ Library: ChIP-seq

+ Title: Zelda binding in the early Drosophila melanogaster embryo marks regions subsequently activated at the maternal-to-zygotic transition

+ Reference: Harrison et al. (2011)

> Harrison, M.M., Li, X.-Y., Kaplan, T., Botchan, M.R., and Eisen, M.B. (2011). Zelda binding in the early Drosophila melanogaster embryo marks regions subsequently activated at the maternal-to-zygotic transition. PLoS Genet. 7, e1002266.

+ 8.1 Sample information


 number  gsm         run         title          study     
-------  ----------  ----------  -------------  ----------
      1  GSM763060   SRR314829   ZLD cycle 8    SRP007513 
      2  GSM763061   SRR314830   ZLD cycle 13   SRP007513 
      3  GSM763062   SRR314831   ZLD cycle 14   SRP007513 

+ 8.2 Supplementary files


 number   GSM  file                                                                                                                                      url                                                                                                
-------  ----  ----------------------------------------------------------------------------------------------------------------------------------------  ---------------------------------------------------------------------------------------------------
      1     1  [GSM763060_ZLD.1hr.peaks.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763060/suppl/GSM763060_ZLD.1hr.peaks.bed.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763060/suppl/GSM763060_ZLD.1hr.peaks.bed.gz    
      2     2  [GSM763060_ZLD.1hr.raw.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763060/suppl/GSM763060_ZLD.1hr.raw.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763060/suppl/GSM763060_ZLD.1hr.raw.bedgraph.gz 
      3     3  [GSM763060_s_6_sequence.dm3.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763060/suppl/GSM763060_s_6_sequence.dm3.bed.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763060/suppl/GSM763060_s_6_sequence.dm3.bed.gz 
      4     4  [GSM763061_ZLD.2hr.peaks.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763061/suppl/GSM763061_ZLD.2hr.peaks.bed.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763061/suppl/GSM763061_ZLD.2hr.peaks.bed.gz    
      5     5  [GSM763061_ZLD.2hr.raw.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763061/suppl/GSM763061_ZLD.2hr.raw.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763061/suppl/GSM763061_ZLD.2hr.raw.bedgraph.gz 
      6     6  [GSM763061_s_7_sequence.dm3.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763061/suppl/GSM763061_s_7_sequence.dm3.bed.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763061/suppl/GSM763061_s_7_sequence.dm3.bed.gz 
      7     7  [GSM763062_ZLD.3hr.peaks.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763062/suppl/GSM763062_ZLD.3hr.peaks.bed.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763062/suppl/GSM763062_ZLD.3hr.peaks.bed.gz    
      8     8  [GSM763062_ZLD.3hr.raw.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763062/suppl/GSM763062_ZLD.3hr.raw.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763062/suppl/GSM763062_ZLD.3hr.raw.bedgraph.gz 
      9     9  [GSM763062_s_8_sequence.dm3.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763062/suppl/GSM763062_s_8_sequence.dm3.bed.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM763nnn/GSM763062/suppl/GSM763062_s_8_sequence.dm3.bed.gz 

### 9. ATAC-seq from staged embryos (GSE83851)

+ Accession Number: GEO: [GSE83851](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE83851)  

+ Number of samples: 81

+ Library: ATAC-seq

+ Title: Establishment and maintenance of heritable chromatin structure during early Drosophila embryogenesis

+ Reference: Blythe and Wieschaus (2016)

> Blythe, S.A., and Wieschaus, E.F. (2016). Establishment and maintenance of heritable chromatin structure during early Drosophila embryogenesis. eLife 5, 5.


+ 9.1 Sample information


 number  gsm          run          title                       study     
-------  -----------  -----------  --------------------------  ----------
      1  GSM2219678   SRR3727933   WT_15121502_NC11_03_rep1    SRP077569 
      2  GSM2219679   SRR3727934   WT_15121602_NC11_03_rep2    SRP077569 
      3  GSM2219680   SRR3727935   WT_15121802_NC11_03_rep3    SRP077569 
      4  GSM2219681   SRR3727936   WT_15121504_NC11_06_rep1    SRP077569 
      5  GSM2219682   SRR3727937   WT_15121603_NC11_06_rep2    SRP077569 
      6  GSM2219683   SRR3727938   WT_15121801_NC11_06_rep3    SRP077569 
      7  GSM2219684   SRR3727939   WT_15121503_NC11_09_rep1    SRP077569 
      8  GSM2219685   SRR3727940   WT_15121604_NC11_09_rep2    SRP077569 
      9  GSM2219686   SRR3727941   WT_15121804_NC11_09_rep3    SRP077569 
     10  GSM2219687   SRR3727942   WT_15042106_NC12_03_rep1    SRP077569 
     11  GSM2219688   SRR3727943   WT_15042202_NC12_03_rep2    SRP077569 
     12  GSM2219689   SRR3727944   WT_15042302_NC12_03_rep3    SRP077569 
     13  GSM2219690   SRR3727945   WT_15042102_NC12_06_rep1    SRP077569 
     14  GSM2219691   SRR3727946   WT_15042401_NC12_06_rep2    SRP077569 
     15  GSM2219692   SRR3727947   WT_15042405_NC12_06_rep3    SRP077569 
     16  GSM2219693   SRR3727948   WT_15042107_NC12_09_rep1    SRP077569 
     17  GSM2219694   SRR3727949   WT_15042303_NC12_09_rep2    SRP077569 
     18  GSM2219695   SRR3727950   WT_15042701_NC12_09_rep3    SRP077569 
     19  GSM2219696   SRR3727951   WT_15042104_NC12_12_rep1    SRP077569 
     20  GSM2219697   SRR3727952   WT_15042304_NC12_12_rep2    SRP077569 
     21  GSM2219698   SRR3727953   WT_15042702_NC12_12_rep3    SRP077569 
     22  GSM2219699   SRR3727954   WT_15042803_NC12_12_rep4    SRP077569 
     23  GSM2219700   SRR3727955   WT_15042205_NC13_03_rep1    SRP077569 
     24  GSM2219701   SRR3727956   WT_15042306_NC13_03_rep2    SRP077569 
     25  GSM2219702   SRR3727957   WT_15042804_NC13_03_rep3    SRP077569 
     26  GSM2219703   SRR3727958   WT_15042103_NC13_06_rep1    SRP077569 
     27  GSM2219704   SRR3727959   WT_15042206_NC13_06_rep2    SRP077569 
     28  GSM2219705   SRR3727960   WT_15042704_NC13_06_rep3    SRP077569 
     29  GSM2219706   SRR3727961   WT_15042307_NC13_09_rep1    SRP077569 
     30  GSM2219707   SRR3727962   WT_15042308_NC13_09_rep2    SRP077569 
     31  GSM2219708   SRR3727963   WT_15042805_NC13_09_rep3    SRP077569 
     32  GSM2219709   SRR3727964   WT_15042204_NC13_12_rep1    SRP077569 
     33  GSM2219710   SRR3727965   WT_15042305_NC13_12_rep2    SRP077569 
     34  GSM2219711   SRR3727966   WT_15042902_NC13_12_rep3    SRP077569 
     35  GSM2219712   SRR3727967   WT_15042105_NC13_15_rep1    SRP077569 
     36  GSM2219713   SRR3727968   WT_15042403_NC13_15_rep2    SRP077569 
     37  GSM2219714   SRR3727969   WT_15042806_NC13_15_rep3    SRP077569 
     38  GSM2219715   SRR3727970   WT_15042201_NC13_18_rep1    SRP077569 
     39  GSM2219716   SRR3727971   WT_15042404_NC13_18_rep2    SRP077569 
     40  GSM2219717   SRR3727972   WT_15042802_NC13_18_rep3    SRP077569 
     41  GSM2219718   SRR3727973   ssm_15082101_NC12_03_rep1   SRP077569 
     42  GSM2219719   SRR3727974   ssm_15082102_NC12_03_rep2   SRP077569 
     43  GSM2219720   SRR3727975   ssm_15082601_NC12_03_rep3   SRP077569 
     44  GSM2219721   SRR3727976   ssm_15081703_NC12_06_rep1   SRP077569 
     45  GSM2219722   SRR3727977   ssm_15082104_NC12_06_rep2   SRP077569 
     46  GSM2219723   SRR3727978   ssm_15082501_NC12_06_rep3   SRP077569 
     47  GSM2219724   SRR3727979   ssm_15081401_NC12_09_rep1   SRP077569 
     48  GSM2219725   SRR3727980   ssm_15081403_NC12_09_rep2   SRP077569 
     49  GSM2219726   SRR3727981   ssm_15082502_NC12_09_rep3   SRP077569 
     50  GSM2219727   SRR3727982   ssm_15081701_NC13_03_rep1   SRP077569 
     51  GSM2219728   SRR3727983   ssm_15081704_NC13_03_rep2   SRP077569 
     52  GSM2219729   SRR3727984   ssm_15082603_NC13_03_rep3   SRP077569 
     53  GSM2219730   SRR3727985   ssm_15081402_NC13_06_rep1   SRP077569 
     54  GSM2219731   SRR3727986   ssm_15082503_NC13_06_rep2   SRP077569 
     55  GSM2219732   SRR3727987   ssm_15082602_NC13_06_rep3   SRP077569 
     56  GSM2219733   SRR3727988   ssm_15081301_NC13_09_rep1   SRP077569 
     57  GSM2219734   SRR3727989   ssm_15081302_NC13_09_rep2   SRP077569 
     58  GSM2219735   SRR3727990   ssm_15081303_NC13_09_rep3   SRP077569 
     59  GSM2219736   SRR3727991   ssm_15082203_NC13_12_rep1   SRP077569 
     60  GSM2219737   SRR3727992   ssm_15082504_NC13_12_rep2   SRP077569 
     61  GSM2219738   SRR3727993   ssm_15082604_NC13_12_rep3   SRP077569 
     62  GSM2219739   SRR3727994   ssm_15120804_NC14_03_rep1   SRP077569 
     63  GSM2219740   SRR3727995   ssm_15120901_NC14_03_rep2   SRP077569 
     64  GSM2219741   SRR3727996   ssm_15120907_NC14_03_rep3   SRP077569 
     65  GSM2219742   SRR3727997   ssm_15121003_NC14_03_rep4   SRP077569 
     66  GSM2219743   SRR3727998   ssm_15120801_NC14_06_rep1   SRP077569 
     67  GSM2219744   SRR3727999   ssm_15120905_NC14_06_rep2   SRP077569 
     68  GSM2219745   SRR3728000   ssm_15121004_NC14_06_rep3   SRP077569 
     69  GSM2219746   SRR3728001   ssm_15120803_NC14_09_rep1   SRP077569 
     70  GSM2219747   SRR3728002   ssm_15120902_NC14_09_rep2   SRP077569 
     71  GSM2219748   SRR3728003   ssm_15120908_NC14_09_rep3   SRP077569 
     72  GSM2219749   SRR3728004   ssm_15121005_NC14_09_rep4   SRP077569 
     73  GSM2219750   SRR3728005   ssm_15120802_NC14_12_rep1   SRP077569 
     74  GSM2219751   SRR3728006   ssm_15120903_NC14_12_rep2   SRP077569 
     75  GSM2219752   SRR3728007   ssm_15121001_NC14_12_rep3   SRP077569 
     76  GSM2219753   SRR3728008   ssm_15120805_NC14_15_rep1   SRP077569 
     77  GSM2219754   SRR3728009   ssm_15120906_NC14_15_rep2   SRP077569 
     78  GSM2219755   SRR3728010   ssm_15121006_NC14_15_rep3   SRP077569 
     79  GSM2219756   SRR3728011   ssm_15120806_NC14_18_rep1   SRP077569 
     80  GSM2219757   SRR3728012   ssm_15120904_NC14_18_rep2   SRP077569 
     81  GSM2219758   SRR3728013   ssm_15121002_NC14_18_rep3   SRP077569 

+ 9.2 Supplementary files


 number  GSM           file                                                                                                                                                                                                                url                                                                                                                                      
-------  ------------  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  -----------------------------------------------------------------------------------------------------------------------------------------
      1  GSM22196781   [GSM2219678_WT_NC11_03_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219678/suppl/GSM2219678_WT_NC11_03_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219678/suppl/GSM2219678_WT_NC11_03_open.wig.gz                                     
      2  GSM22196782   [GSM2219678_wt_NC11.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219678/suppl/GSM2219678_wt_NC11.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219678/suppl/GSM2219678_wt_NC11.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
      3  GSM22196783   [GSM2219678_wt_NC11.03_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219678/suppl/GSM2219678_wt_NC11.03_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219678/suppl/GSM2219678_wt_NC11.03_all.peaks.nucmap_combined.bed.gz                
      4  GSM22196811   [GSM2219681_WT_NC11_06_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219681/suppl/GSM2219681_WT_NC11_06_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219681/suppl/GSM2219681_WT_NC11_06_open.wig.gz                                     
      5  GSM22196812   [GSM2219681_wt_NC11.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219681/suppl/GSM2219681_wt_NC11.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219681/suppl/GSM2219681_wt_NC11.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
      6  GSM22196813   [GSM2219681_wt_NC11.06_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219681/suppl/GSM2219681_wt_NC11.06_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219681/suppl/GSM2219681_wt_NC11.06_all.peaks.nucmap_combined.bed.gz                
      7  GSM22196841   [GSM2219684_WT_NC11_09_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219684/suppl/GSM2219684_WT_NC11_09_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219684/suppl/GSM2219684_WT_NC11_09_open.wig.gz                                     
      8  GSM22196842   [GSM2219684_wt_NC11.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219684/suppl/GSM2219684_wt_NC11.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219684/suppl/GSM2219684_wt_NC11.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
      9  GSM22196843   [GSM2219684_wt_NC11.09_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219684/suppl/GSM2219684_wt_NC11.09_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219684/suppl/GSM2219684_wt_NC11.09_all.peaks.nucmap_combined.bed.gz                
     10  GSM22196871   [GSM2219687_WT_NC12_03_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219687/suppl/GSM2219687_WT_NC12_03_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219687/suppl/GSM2219687_WT_NC12_03_open.wig.gz                                     
     11  GSM22196872   [GSM2219687_wt_NC12.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219687/suppl/GSM2219687_wt_NC12.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219687/suppl/GSM2219687_wt_NC12.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
     12  GSM22196873   [GSM2219687_wt_NC12.03_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219687/suppl/GSM2219687_wt_NC12.03_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219687/suppl/GSM2219687_wt_NC12.03_all.peaks.nucmap_combined.bed.gz                
     13  GSM22196901   [GSM2219690_WT_NC12_06_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219690/suppl/GSM2219690_WT_NC12_06_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219690/suppl/GSM2219690_WT_NC12_06_open.wig.gz                                     
     14  GSM22196902   [GSM2219690_wt_NC12.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219690/suppl/GSM2219690_wt_NC12.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219690/suppl/GSM2219690_wt_NC12.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
     15  GSM22196903   [GSM2219690_wt_NC12.06_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219690/suppl/GSM2219690_wt_NC12.06_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219690/suppl/GSM2219690_wt_NC12.06_all.peaks.nucmap_combined.bed.gz                
     16  GSM22196931   [GSM2219693_WT_NC12_09_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219693/suppl/GSM2219693_WT_NC12_09_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219693/suppl/GSM2219693_WT_NC12_09_open.wig.gz                                     
     17  GSM22196932   [GSM2219693_wt_NC12.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219693/suppl/GSM2219693_wt_NC12.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219693/suppl/GSM2219693_wt_NC12.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
     18  GSM22196933   [GSM2219693_wt_NC12.09_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219693/suppl/GSM2219693_wt_NC12.09_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219693/suppl/GSM2219693_wt_NC12.09_all.peaks.nucmap_combined.bed.gz                
     19  GSM22196961   [GSM2219696_WT_NC12_12_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219696/suppl/GSM2219696_WT_NC12_12_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219696/suppl/GSM2219696_WT_NC12_12_open.wig.gz                                     
     20  GSM22196962   [GSM2219696_wt_NC12.12_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219696/suppl/GSM2219696_wt_NC12.12_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219696/suppl/GSM2219696_wt_NC12.12_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
     21  GSM22196963   [GSM2219696_wt_NC12.12_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219696/suppl/GSM2219696_wt_NC12.12_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219696/suppl/GSM2219696_wt_NC12.12_all.peaks.nucmap_combined.bed.gz                
     22  GSM22197001   [GSM2219700_WT_NC13_03_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219700/suppl/GSM2219700_WT_NC13_03_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219700/suppl/GSM2219700_WT_NC13_03_open.wig.gz                                     
     23  GSM22197002   [GSM2219700_wt_NC13.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219700/suppl/GSM2219700_wt_NC13.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219700/suppl/GSM2219700_wt_NC13.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
     24  GSM22197003   [GSM2219700_wt_NC13.03_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219700/suppl/GSM2219700_wt_NC13.03_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219700/suppl/GSM2219700_wt_NC13.03_all.peaks.nucmap_combined.bed.gz                
     25  GSM22197031   [GSM2219703_WT_NC13_06_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219703/suppl/GSM2219703_WT_NC13_06_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219703/suppl/GSM2219703_WT_NC13_06_open.wig.gz                                     
     26  GSM22197032   [GSM2219703_wt_NC13.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219703/suppl/GSM2219703_wt_NC13.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219703/suppl/GSM2219703_wt_NC13.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
     27  GSM22197033   [GSM2219703_wt_NC13.06_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219703/suppl/GSM2219703_wt_NC13.06_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219703/suppl/GSM2219703_wt_NC13.06_all.peaks.nucmap_combined.bed.gz                
     28  GSM22197061   [GSM2219706_WT_NC13_09_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219706/suppl/GSM2219706_WT_NC13_09_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219706/suppl/GSM2219706_WT_NC13_09_open.wig.gz                                     
     29  GSM22197062   [GSM2219706_wt_NC13.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219706/suppl/GSM2219706_wt_NC13.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219706/suppl/GSM2219706_wt_NC13.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
     30  GSM22197063   [GSM2219706_wt_NC13.09_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219706/suppl/GSM2219706_wt_NC13.09_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219706/suppl/GSM2219706_wt_NC13.09_all.peaks.nucmap_combined.bed.gz                
     31  GSM22197091   [GSM2219709_WT_NC13_12_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219709/suppl/GSM2219709_WT_NC13_12_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219709/suppl/GSM2219709_WT_NC13_12_open.wig.gz                                     
     32  GSM22197092   [GSM2219709_wt_NC13.12_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219709/suppl/GSM2219709_wt_NC13.12_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219709/suppl/GSM2219709_wt_NC13.12_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
     33  GSM22197093   [GSM2219709_wt_NC13.12_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219709/suppl/GSM2219709_wt_NC13.12_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219709/suppl/GSM2219709_wt_NC13.12_all.peaks.nucmap_combined.bed.gz                
     34  GSM22197121   [GSM2219712_WT_NC13_15_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219712/suppl/GSM2219712_WT_NC13_15_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219712/suppl/GSM2219712_WT_NC13_15_open.wig.gz                                     
     35  GSM22197122   [GSM2219712_wt_NC13.15_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219712/suppl/GSM2219712_wt_NC13.15_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219712/suppl/GSM2219712_wt_NC13.15_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
     36  GSM22197123   [GSM2219712_wt_NC13.15_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219712/suppl/GSM2219712_wt_NC13.15_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219712/suppl/GSM2219712_wt_NC13.15_all.peaks.nucmap_combined.bed.gz                
     37  GSM22197151   [GSM2219715_WT_NC13_18_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219715/suppl/GSM2219715_WT_NC13_18_open.wig.gz)                                                                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219715/suppl/GSM2219715_WT_NC13_18_open.wig.gz                                     
     38  GSM22197152   [GSM2219715_wt_NC13.18_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219715/suppl/GSM2219715_wt_NC13.18_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219715/suppl/GSM2219715_wt_NC13.18_all.peaks.nucleoatac_signal.smooth.bedgraph.gz  
     39  GSM22197153   [GSM2219715_wt_NC13.18_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219715/suppl/GSM2219715_wt_NC13.18_all.peaks.nucmap_combined.bed.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219715/suppl/GSM2219715_wt_NC13.18_all.peaks.nucmap_combined.bed.gz                
     40  GSM22197181   [GSM2219718_ssm_NC12.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219718/suppl/GSM2219718_ssm_NC12.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219718/suppl/GSM2219718_ssm_NC12.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     41  GSM22197182   [GSM2219718_ssm_NC12.03_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219718/suppl/GSM2219718_ssm_NC12.03_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219718/suppl/GSM2219718_ssm_NC12.03_all.peaks.nucmap_combined.bed.gz               
     42  GSM22197183   [GSM2219718_ssm_NC12_03_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219718/suppl/GSM2219718_ssm_NC12_03_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219718/suppl/GSM2219718_ssm_NC12_03_open.wig.gz                                    
     43  GSM22197211   [GSM2219721_ssm_NC12.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219721/suppl/GSM2219721_ssm_NC12.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219721/suppl/GSM2219721_ssm_NC12.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     44  GSM22197212   [GSM2219721_ssm_NC12.06_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219721/suppl/GSM2219721_ssm_NC12.06_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219721/suppl/GSM2219721_ssm_NC12.06_all.peaks.nucmap_combined.bed.gz               
     45  GSM22197213   [GSM2219721_ssm_NC12_06_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219721/suppl/GSM2219721_ssm_NC12_06_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219721/suppl/GSM2219721_ssm_NC12_06_open.wig.gz                                    
     46  GSM22197241   [GSM2219724_ssm_NC12.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219724/suppl/GSM2219724_ssm_NC12.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219724/suppl/GSM2219724_ssm_NC12.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     47  GSM22197242   [GSM2219724_ssm_NC12.09_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219724/suppl/GSM2219724_ssm_NC12.09_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219724/suppl/GSM2219724_ssm_NC12.09_all.peaks.nucmap_combined.bed.gz               
     48  GSM22197243   [GSM2219724_ssm_NC12_09_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219724/suppl/GSM2219724_ssm_NC12_09_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219724/suppl/GSM2219724_ssm_NC12_09_open.wig.gz                                    
     49  GSM22197271   [GSM2219727_ssm_NC13.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219727/suppl/GSM2219727_ssm_NC13.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219727/suppl/GSM2219727_ssm_NC13.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     50  GSM22197272   [GSM2219727_ssm_NC13.03_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219727/suppl/GSM2219727_ssm_NC13.03_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219727/suppl/GSM2219727_ssm_NC13.03_all.peaks.nucmap_combined.bed.gz               
     51  GSM22197273   [GSM2219727_ssm_NC13_03_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219727/suppl/GSM2219727_ssm_NC13_03_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219727/suppl/GSM2219727_ssm_NC13_03_open.wig.gz                                    
     52  GSM22197301   [GSM2219730_ssm_NC13.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219730/suppl/GSM2219730_ssm_NC13.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219730/suppl/GSM2219730_ssm_NC13.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     53  GSM22197302   [GSM2219730_ssm_NC13.06_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219730/suppl/GSM2219730_ssm_NC13.06_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219730/suppl/GSM2219730_ssm_NC13.06_all.peaks.nucmap_combined.bed.gz               
     54  GSM22197303   [GSM2219730_ssm_NC13_06_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219730/suppl/GSM2219730_ssm_NC13_06_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219730/suppl/GSM2219730_ssm_NC13_06_open.wig.gz                                    
     55  GSM22197331   [GSM2219733_ssm_NC13.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219733/suppl/GSM2219733_ssm_NC13.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219733/suppl/GSM2219733_ssm_NC13.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     56  GSM22197332   [GSM2219733_ssm_NC13.09_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219733/suppl/GSM2219733_ssm_NC13.09_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219733/suppl/GSM2219733_ssm_NC13.09_all.peaks.nucmap_combined.bed.gz               
     57  GSM22197333   [GSM2219733_ssm_NC13_09_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219733/suppl/GSM2219733_ssm_NC13_09_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219733/suppl/GSM2219733_ssm_NC13_09_open.wig.gz                                    
     58  GSM22197361   [GSM2219736_ssm_NC13.12_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219736/suppl/GSM2219736_ssm_NC13.12_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219736/suppl/GSM2219736_ssm_NC13.12_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     59  GSM22197362   [GSM2219736_ssm_NC13.12_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219736/suppl/GSM2219736_ssm_NC13.12_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219736/suppl/GSM2219736_ssm_NC13.12_all.peaks.nucmap_combined.bed.gz               
     60  GSM22197363   [GSM2219736_ssm_NC13_12_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219736/suppl/GSM2219736_ssm_NC13_12_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219736/suppl/GSM2219736_ssm_NC13_12_open.wig.gz                                    
     61  GSM22197391   [GSM2219739_ssm_NC14.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219739/suppl/GSM2219739_ssm_NC14.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219739/suppl/GSM2219739_ssm_NC14.03_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     62  GSM22197392   [GSM2219739_ssm_NC14.03_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219739/suppl/GSM2219739_ssm_NC14.03_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219739/suppl/GSM2219739_ssm_NC14.03_all.peaks.nucmap_combined.bed.gz               
     63  GSM22197393   [GSM2219739_ssm_NC14_03_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219739/suppl/GSM2219739_ssm_NC14_03_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219739/suppl/GSM2219739_ssm_NC14_03_open.wig.gz                                    
     64  GSM22197431   [GSM2219743_ssm_NC14.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219743/suppl/GSM2219743_ssm_NC14.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219743/suppl/GSM2219743_ssm_NC14.06_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     65  GSM22197432   [GSM2219743_ssm_NC14.06_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219743/suppl/GSM2219743_ssm_NC14.06_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219743/suppl/GSM2219743_ssm_NC14.06_all.peaks.nucmap_combined.bed.gz               
     66  GSM22197433   [GSM2219743_ssm_NC14_06_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219743/suppl/GSM2219743_ssm_NC14_06_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219743/suppl/GSM2219743_ssm_NC14_06_open.wig.gz                                    
     67  GSM22197461   [GSM2219746_ssm_NC14.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219746/suppl/GSM2219746_ssm_NC14.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219746/suppl/GSM2219746_ssm_NC14.09_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     68  GSM22197462   [GSM2219746_ssm_NC14.09_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219746/suppl/GSM2219746_ssm_NC14.09_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219746/suppl/GSM2219746_ssm_NC14.09_all.peaks.nucmap_combined.bed.gz               
     69  GSM22197463   [GSM2219746_ssm_NC14_09_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219746/suppl/GSM2219746_ssm_NC14_09_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219746/suppl/GSM2219746_ssm_NC14_09_open.wig.gz                                    
     70  GSM22197501   [GSM2219750_ssm_NC14.12_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219750/suppl/GSM2219750_ssm_NC14.12_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219750/suppl/GSM2219750_ssm_NC14.12_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     71  GSM22197502   [GSM2219750_ssm_NC14.12_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219750/suppl/GSM2219750_ssm_NC14.12_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219750/suppl/GSM2219750_ssm_NC14.12_all.peaks.nucmap_combined.bed.gz               
     72  GSM22197503   [GSM2219750_ssm_NC14_12_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219750/suppl/GSM2219750_ssm_NC14_12_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219750/suppl/GSM2219750_ssm_NC14_12_open.wig.gz                                    
     73  GSM22197531   [GSM2219753_ssm_NC14.15_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219753/suppl/GSM2219753_ssm_NC14.15_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219753/suppl/GSM2219753_ssm_NC14.15_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     74  GSM22197532   [GSM2219753_ssm_NC14.15_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219753/suppl/GSM2219753_ssm_NC14.15_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219753/suppl/GSM2219753_ssm_NC14.15_all.peaks.nucmap_combined.bed.gz               
     75  GSM22197533   [GSM2219753_ssm_NC14_15_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219753/suppl/GSM2219753_ssm_NC14_15_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219753/suppl/GSM2219753_ssm_NC14_15_open.wig.gz                                    
     76  GSM22197561   [GSM2219756_ssm_NC14.18_all.peaks.nucleoatac_signal.smooth.bedgraph.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219756/suppl/GSM2219756_ssm_NC14.18_all.peaks.nucleoatac_signal.smooth.bedgraph.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219756/suppl/GSM2219756_ssm_NC14.18_all.peaks.nucleoatac_signal.smooth.bedgraph.gz 
     77  GSM22197562   [GSM2219756_ssm_NC14.18_all.peaks.nucmap_combined.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219756/suppl/GSM2219756_ssm_NC14.18_all.peaks.nucmap_combined.bed.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219756/suppl/GSM2219756_ssm_NC14.18_all.peaks.nucmap_combined.bed.gz               
     78  GSM22197563   [GSM2219756_ssm_NC14_18_open.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219756/suppl/GSM2219756_ssm_NC14_18_open.wig.gz)                                                                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM2219nnn/GSM2219756/suppl/GSM2219756_ssm_NC14_18_open.wig.gz                                    

### 10. BEAF ChIP-seq from Kc cells (GSE62904)

+ Accession Number: GEO: [GSE62904](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE62904)  

+ Number of samples: 61

+ Library: ChIP-seq

+ Title: Widespread rearrangement of 3D chromatin organization underlies polycomb-mediated stress-induced silencing

+ Reference: Li et al. (2015)

> Li, L., Lyu, X., Hou, C., Takenaka, N., Nguyen, H.Q., Ong, C.-T., Cuben˜ as Potts, C., Hu, M., Lei, E.P., Bosco, G., et al. (2015). Widespread rearrangement of 3D chromatin organization underlies polycomb-mediated stress-induced silencing. Mol. Cell 58, 216–231.

+ 10.1 Sample information


 number  gsm          run          title                      study     
-------  -----------  -----------  -------------------------  ----------
      1  GSM1535962   SRR1636748   BEAF_HS_Rep1               SRP049442 
      2  GSM1535963   SRR1636749   BEAF_NT_Rep2               SRP049442 
      3  GSM1535964   SRR1636750   CapH2_HS_Rep1              SRP049442 
      4  GSM1535965   SRR1636751   CapH2_HS_Rep2              SRP049442 
      5  GSM1535966   SRR1636752   CapH2_NT_Rep1              SRP049442 
      6  GSM1535967   SRR1636753   CapH2_NT_Rep2              SRP049442 
      7  GSM1535968   SRR1636754   CBP_HS_Rep1                SRP049442 
      8  GSM1535969   SRR1636755   CBP_HS_Rep2                SRP049442 
      9  GSM1535970   SRR1636756   CBP_NT_Rep1                SRP049442 
     10  GSM1535971   SRR1636757   CBP_NT_Rep2                SRP049442 
     11  GSM1535972   SRR1636758   CBP_NT_Rep3                SRP049442 
     12  GSM1535973   SRR1636759   Chromator_HS_Rep1          SRP049442 
     13  GSM1535974   SRR1636760   Chromator_HS_Rep2          SRP049442 
     14  GSM1535975   SRR1636761   Chromator_NT_Rep1          SRP049442 
     15  GSM1535976   SRR1636762   Chromator_NT_Rep2          SRP049442 
     16  GSM1535977   SRR1636763   CP190_HS_Rep1              SRP049442 
     17  GSM1535978   SRR1636764   CP190_HS_Rep2              SRP049442 
     18  GSM1535979   SRR1636765   CP190_HS_Rep3              SRP049442 
     19  GSM1535980   SRR1636766   CP190_NT_Rep2              SRP049442 
     20  GSM1535981   SRR1636767   CTCF_HS_Rep1               SRP049442 
     21  GSM1535982   SRR1636768   CTCF_HS_Rep2               SRP049442 
     22  GSM1535983   SRR1636769   CTCF_NT_Rep2               SRP049442 
     23  GSM1535984   SRR1636770   DREF_HS_Rep1               SRP049442 
     24  GSM1535985   SRR1636771   DREF_NT_Rep2               SRP049442 
     25  GSM1535986   SRR1636772   Fs1h-L_HS_Rep1             SRP049442 
     26  GSM1535987   SRR1636773   Fs1h-L_NT_Rep1             SRP049442 
     27  GSM1535988   SRR1636774   Fs1h-L_NT_Rep2             SRP049442 
     28  GSM1535989   SRR1636775   H3K4me1_HS_Rep1            SRP049442 
     29  GSM1535990   SRR1636776   H3K4me1_HS_Rep2            SRP049442 
     30  GSM1535991   SRR1636777   H3K4me1_NT_Rep2            SRP049442 
     31  GSM1535992   SRR1636778   H3K4me3_HS_Rep1            SRP049442 
     32  GSM1535993   SRR1636779   H3K4me3_HS_Rep2            SRP049442 
     33  GSM1535994   SRR1636780   H3K4me3_NT_Rep2            SRP049442 
     34  GSM1535995   SRR1636781   H3K9me2_HS_Rep1            SRP049442 
     35  GSM1535996   SRR1636782   H3K9me2_NT_Rep1            SRP049442 
     36  GSM1535997   SRR1636783   H3K27ac_HS_Rep1            SRP049442 
     37  GSM1535998   SRR1636784   IgG_input_HS_Rep1          SRP049442 
     38  GSM1535999   SRR1636785   IgG_input_NT_Rep1          SRP049442 
     39  GSM1536000   SRR1636786   IgG_input_NT_Rep2          SRP049442 
     40  GSM1536001   SRR1636787   L3mbt_HS_Rep1              SRP049442 
     41  GSM1536002   SRR1636788   L3mbt_NT_Rep1              SRP049442 
     42  GSM1536003   SRR1636789   Modmdg4_HS_Rep1            SRP049442 
     43  GSM1536004   SRR1636790   Modmdg4_HS_Rep2            SRP049442 
     44  GSM1536005   SRR1636791   Pc_RJ_HS_Rep1              SRP049442 
     45  GSM1536006   SRR1636792   Pc_RJ_NT_Rep1              SRP049442 
     46  GSM1536007   SRR1636793   Pc_VP_NT_Rep1              SRP049442 
     47  GSM1536008   SRR1636794   Rad21_HS_Rep1              SRP049442 
     48  GSM1536009   SRR1636795   Rad21_NT_Rep1              SRP049442 
     49  GSM1536010   SRR1636796   Rad21_NT_Rep2              SRP049442 
     50  GSM1536011   SRR1636797   Rad21_NT_Rep3              SRP049442 
     51  GSM1536012   SRR1636798   RNAPII_flavopiridol_Rep1   SRP049442 
     52  GSM1536013   SRR1636799   RNAPII_HS_Rep1             SRP049442 
     53  GSM1536014   SRR1636800   RNAPII_NT_Rep1             SRP049442 
     54  GSM1536015   SRR1636801   RNAPII_triptolide_Rep1     SRP049442 
     55  GSM1536016   SRR1636802   SuHw_HS_Rep1               SRP049442 
     56  GSM1536017   SRR1636803   TFIIIC_HS_Rep1             SRP049442 
     57  GSM1536018   SRR1636804   TFIIIC_HS_Rep2             SRP049442 
     58  GSM1536019   SRR1636805   TFIIIC_NT_Rep1             SRP049442 
     59  GSM1536020   SRR1636806   TFIIIC_NT_Rep2             SRP049442 
     60  GSM1536021   SRR1636807   Z4_HS_Rep1                 SRP049442 
     61  GSM1536022   SRR1636808   Z4_NT_Rep1                 SRP049442 

+ 10.2 Supplementary files


 number  GSM          file                                                                                                                                                          url                                                                                                           
-------  -----------  ------------------------------------------------------------------------------------------------------------------------------------------------------------  --------------------------------------------------------------------------------------------------------------
      1  GSM1535962   [GSM1535962_BEAF_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535962/suppl/GSM1535962_BEAF_HS_Rep1.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535962/suppl/GSM1535962_BEAF_HS_Rep1.wig.gz             
      2  GSM1535963   [GSM1535963_BEAF_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535963/suppl/GSM1535963_BEAF_NT_Rep2.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535963/suppl/GSM1535963_BEAF_NT_Rep2.wig.gz             
      3  GSM1535964   [GSM1535964_CapH2_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535964/suppl/GSM1535964_CapH2_HS_Rep1.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535964/suppl/GSM1535964_CapH2_HS_Rep1.wig.gz            
      4  GSM1535965   [GSM1535965_CapH2_HS_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535965/suppl/GSM1535965_CapH2_HS_Rep2.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535965/suppl/GSM1535965_CapH2_HS_Rep2.wig.gz            
      5  GSM1535966   [GSM1535966_CapH2_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535966/suppl/GSM1535966_CapH2_NT_Rep1.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535966/suppl/GSM1535966_CapH2_NT_Rep1.wig.gz            
      6  GSM1535967   [GSM1535967_CapH2_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535967/suppl/GSM1535967_CapH2_NT_Rep2.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535967/suppl/GSM1535967_CapH2_NT_Rep2.wig.gz            
      7  GSM1535968   [GSM1535968_CBP_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535968/suppl/GSM1535968_CBP_HS_Rep1.wig.gz)                             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535968/suppl/GSM1535968_CBP_HS_Rep1.wig.gz              
      8  GSM1535969   [GSM1535969_CBP_HS_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535969/suppl/GSM1535969_CBP_HS_Rep2.wig.gz)                             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535969/suppl/GSM1535969_CBP_HS_Rep2.wig.gz              
      9  GSM1535970   [GSM1535970_CBP_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535970/suppl/GSM1535970_CBP_NT_Rep1.wig.gz)                             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535970/suppl/GSM1535970_CBP_NT_Rep1.wig.gz              
     10  GSM1535971   [GSM1535971_CBP_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535971/suppl/GSM1535971_CBP_NT_Rep2.wig.gz)                             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535971/suppl/GSM1535971_CBP_NT_Rep2.wig.gz              
     11  GSM1535972   [GSM1535972_CBP_NT_Rep3.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535972/suppl/GSM1535972_CBP_NT_Rep3.wig.gz)                             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535972/suppl/GSM1535972_CBP_NT_Rep3.wig.gz              
     12  GSM1535973   [GSM1535973_Chromator_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535973/suppl/GSM1535973_Chromator_HS_Rep1.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535973/suppl/GSM1535973_Chromator_HS_Rep1.wig.gz        
     13  GSM1535974   [GSM1535974_Chromator_HS_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535974/suppl/GSM1535974_Chromator_HS_Rep2.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535974/suppl/GSM1535974_Chromator_HS_Rep2.wig.gz        
     14  GSM1535975   [GSM1535975_Chromator_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535975/suppl/GSM1535975_Chromator_NT_Rep1.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535975/suppl/GSM1535975_Chromator_NT_Rep1.wig.gz        
     15  GSM1535976   [GSM1535976_Chromator_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535976/suppl/GSM1535976_Chromator_NT_Rep2.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535976/suppl/GSM1535976_Chromator_NT_Rep2.wig.gz        
     16  GSM1535977   [GSM1535977_CP190_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535977/suppl/GSM1535977_CP190_HS_Rep1.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535977/suppl/GSM1535977_CP190_HS_Rep1.wig.gz            
     17  GSM1535978   [GSM1535978_CP190_HS_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535978/suppl/GSM1535978_CP190_HS_Rep2.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535978/suppl/GSM1535978_CP190_HS_Rep2.wig.gz            
     18  GSM1535979   [GSM1535979_CP190_HS_Rep3.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535979/suppl/GSM1535979_CP190_HS_Rep3.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535979/suppl/GSM1535979_CP190_HS_Rep3.wig.gz            
     19  GSM1535980   [GSM1535980_CP190_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535980/suppl/GSM1535980_CP190_NT_Rep2.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535980/suppl/GSM1535980_CP190_NT_Rep2.wig.gz            
     20  GSM1535981   [GSM1535981_CTCF_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535981/suppl/GSM1535981_CTCF_HS_Rep1.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535981/suppl/GSM1535981_CTCF_HS_Rep1.wig.gz             
     21  GSM1535982   [GSM1535982_CTCF_HS_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535982/suppl/GSM1535982_CTCF_HS_Rep2.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535982/suppl/GSM1535982_CTCF_HS_Rep2.wig.gz             
     22  GSM1535983   [GSM1535983_CTCF_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535983/suppl/GSM1535983_CTCF_NT_Rep2.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535983/suppl/GSM1535983_CTCF_NT_Rep2.wig.gz             
     23  GSM1535984   [GSM1535984_DREF_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535984/suppl/GSM1535984_DREF_HS_Rep1.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535984/suppl/GSM1535984_DREF_HS_Rep1.wig.gz             
     24  GSM1535985   [GSM1535985_DREF_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535985/suppl/GSM1535985_DREF_NT_Rep2.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535985/suppl/GSM1535985_DREF_NT_Rep2.wig.gz             
     25  GSM1535986   [GSM1535986_Fs1h-L_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535986/suppl/GSM1535986_Fs1h-L_HS_Rep1.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535986/suppl/GSM1535986_Fs1h-L_HS_Rep1.wig.gz           
     26  GSM1535987   [GSM1535987_Fs1h-L_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535987/suppl/GSM1535987_Fs1h-L_NT_Rep1.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535987/suppl/GSM1535987_Fs1h-L_NT_Rep1.wig.gz           
     27  GSM1535988   [GSM1535988_Fs1h-L_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535988/suppl/GSM1535988_Fs1h-L_NT_Rep2.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535988/suppl/GSM1535988_Fs1h-L_NT_Rep2.wig.gz           
     28  GSM1535989   [GSM1535989_H3K4me1_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535989/suppl/GSM1535989_H3K4me1_HS_Rep1.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535989/suppl/GSM1535989_H3K4me1_HS_Rep1.wig.gz          
     29  GSM1535990   [GSM1535990_H3K4me1_HS_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535990/suppl/GSM1535990_H3K4me1_HS_Rep2.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535990/suppl/GSM1535990_H3K4me1_HS_Rep2.wig.gz          
     30  GSM1535991   [GSM1535991_H3K4me1_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535991/suppl/GSM1535991_H3K4me1_NT_Rep2.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535991/suppl/GSM1535991_H3K4me1_NT_Rep2.wig.gz          
     31  GSM1535992   [GSM1535992_H3K4me3_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535992/suppl/GSM1535992_H3K4me3_HS_Rep1.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535992/suppl/GSM1535992_H3K4me3_HS_Rep1.wig.gz          
     32  GSM1535993   [GSM1535993_H3K4me3_HS_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535993/suppl/GSM1535993_H3K4me3_HS_Rep2.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535993/suppl/GSM1535993_H3K4me3_HS_Rep2.wig.gz          
     33  GSM1535994   [GSM1535994_H3K4me3_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535994/suppl/GSM1535994_H3K4me3_NT_Rep2.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535994/suppl/GSM1535994_H3K4me3_NT_Rep2.wig.gz          
     34  GSM1535995   [GSM1535995_H3K9me2_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535995/suppl/GSM1535995_H3K9me2_HS_Rep1.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535995/suppl/GSM1535995_H3K9me2_HS_Rep1.wig.gz          
     35  GSM1535996   [GSM1535996_H3K9me2_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535996/suppl/GSM1535996_H3K9me2_NT_Rep1.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535996/suppl/GSM1535996_H3K9me2_NT_Rep1.wig.gz          
     36  GSM1535997   [GSM1535997_H3K27ac_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535997/suppl/GSM1535997_H3K27ac_HS_Rep1.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535997/suppl/GSM1535997_H3K27ac_HS_Rep1.wig.gz          
     37  GSM1535998   [GSM1535998_IgG_input_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535998/suppl/GSM1535998_IgG_input_HS_Rep1.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535998/suppl/GSM1535998_IgG_input_HS_Rep1.wig.gz        
     38  GSM1535999   [GSM1535999_IgG_input_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535999/suppl/GSM1535999_IgG_input_NT_Rep1.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1535nnn/GSM1535999/suppl/GSM1535999_IgG_input_NT_Rep1.wig.gz        
     39  GSM1536000   [GSM1536000_IgG_input_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536000/suppl/GSM1536000_IgG_input_NT_Rep2.wig.gz)                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536000/suppl/GSM1536000_IgG_input_NT_Rep2.wig.gz        
     40  GSM1536001   [GSM1536001_L3mbt_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536001/suppl/GSM1536001_L3mbt_HS_Rep1.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536001/suppl/GSM1536001_L3mbt_HS_Rep1.wig.gz            
     41  GSM1536002   [GSM1536002_L3mbt_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536002/suppl/GSM1536002_L3mbt_NT_Rep1.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536002/suppl/GSM1536002_L3mbt_NT_Rep1.wig.gz            
     42  GSM1536003   [GSM1536003_Modmdg4_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536003/suppl/GSM1536003_Modmdg4_HS_Rep1.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536003/suppl/GSM1536003_Modmdg4_HS_Rep1.wig.gz          
     43  GSM1536004   [GSM1536004_Modmdg4_HS_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536004/suppl/GSM1536004_Modmdg4_HS_Rep2.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536004/suppl/GSM1536004_Modmdg4_HS_Rep2.wig.gz          
     44  GSM1536005   [GSM1536005_Pc_RJ_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536005/suppl/GSM1536005_Pc_RJ_HS_Rep1.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536005/suppl/GSM1536005_Pc_RJ_HS_Rep1.wig.gz            
     45  GSM1536006   [GSM1536006_Pc_RJ_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536006/suppl/GSM1536006_Pc_RJ_NT_Rep1.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536006/suppl/GSM1536006_Pc_RJ_NT_Rep1.wig.gz            
     46  GSM1536007   [GSM1536007_Pc_VP_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536007/suppl/GSM1536007_Pc_VP_NT_Rep1.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536007/suppl/GSM1536007_Pc_VP_NT_Rep1.wig.gz            
     47  GSM1536008   [GSM1536008_Rad21_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536008/suppl/GSM1536008_Rad21_HS_Rep1.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536008/suppl/GSM1536008_Rad21_HS_Rep1.wig.gz            
     48  GSM1536009   [GSM1536009_Rad21_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536009/suppl/GSM1536009_Rad21_NT_Rep1.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536009/suppl/GSM1536009_Rad21_NT_Rep1.wig.gz            
     49  GSM1536010   [GSM1536010_Rad21_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536010/suppl/GSM1536010_Rad21_NT_Rep2.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536010/suppl/GSM1536010_Rad21_NT_Rep2.wig.gz            
     50  GSM1536011   [GSM1536011_Rad21_NT_Rep3.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536011/suppl/GSM1536011_Rad21_NT_Rep3.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536011/suppl/GSM1536011_Rad21_NT_Rep3.wig.gz            
     51  GSM1536012   [GSM1536012_RNAPII_flavopiridol_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536012/suppl/GSM1536012_RNAPII_flavopiridol_Rep1.wig.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536012/suppl/GSM1536012_RNAPII_flavopiridol_Rep1.wig.gz 
     52  GSM1536013   [GSM1536013_RNAPII_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536013/suppl/GSM1536013_RNAPII_HS_Rep1.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536013/suppl/GSM1536013_RNAPII_HS_Rep1.wig.gz           
     53  GSM1536014   [GSM1536014_RNAPII_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536014/suppl/GSM1536014_RNAPII_NT_Rep1.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536014/suppl/GSM1536014_RNAPII_NT_Rep1.wig.gz           
     54  GSM1536015   [GSM1536015_RNAPII_triptolide_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536015/suppl/GSM1536015_RNAPII_triptolide_Rep1.wig.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536015/suppl/GSM1536015_RNAPII_triptolide_Rep1.wig.gz   
     55  GSM1536016   [GSM1536016_SuHw_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536016/suppl/GSM1536016_SuHw_HS_Rep1.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536016/suppl/GSM1536016_SuHw_HS_Rep1.wig.gz             
     56  GSM1536017   [GSM1536017_TFIIIC_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536017/suppl/GSM1536017_TFIIIC_HS_Rep1.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536017/suppl/GSM1536017_TFIIIC_HS_Rep1.wig.gz           
     57  GSM1536018   [GSM1536018_TFIIIC_HS_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536018/suppl/GSM1536018_TFIIIC_HS_Rep2.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536018/suppl/GSM1536018_TFIIIC_HS_Rep2.wig.gz           
     58  GSM1536019   [GSM1536019_TFIIIC_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536019/suppl/GSM1536019_TFIIIC_NT_Rep1.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536019/suppl/GSM1536019_TFIIIC_NT_Rep1.wig.gz           
     59  GSM1536020   [GSM1536020_TFIIIC_NT_Rep2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536020/suppl/GSM1536020_TFIIIC_NT_Rep2.wig.gz)                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536020/suppl/GSM1536020_TFIIIC_NT_Rep2.wig.gz           
     60  GSM1536021   [GSM1536021_Z4_HS_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536021/suppl/GSM1536021_Z4_HS_Rep1.wig.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536021/suppl/GSM1536021_Z4_HS_Rep1.wig.gz               
     61  GSM1536022   [GSM1536022_Z4_NT_Rep1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536022/suppl/GSM1536022_Z4_NT_Rep1.wig.gz)                               ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1536nnn/GSM1536022/suppl/GSM1536022_Z4_NT_Rep1.wig.gz               

### 11. CapH2 ChIP-seq from Kc cells (GSE54529)

+ Accession Number: GEO: [GSE54529](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE54529)  

+ Number of samples: 16

+ Library: ChIP-seq

+ Title: Insulator function and topological domain border strength scale with architectural protein occupancy

+ Reference: Van Bortle et al. (2014)

> Van Bortle, K., Nichols, M.H., Li, L., Ong, C.-T., Takenaka, N., Qin, Z.S., and Corces, V.G. (2014). Insulator function and topological domain border strength scale with architectural protein occupancy. Genome Biol. 15, R82.

+ 11.1 Sample information


 number  gsm          run          title                               study     
-------  -----------  -----------  ----------------------------------  ----------
      1  GSM1318349   SRR1151097   dTFIIIC220 biological replicate 1   SRP036067 
      2  GSM1318350   SRR1151098   dTFIIIC220 biological replicate 2   SRP036067 
      3  GSM1318351   SRR1151099   dTFIIIC220 biological replicate 3   SRP036067 
      4  GSM1318352   SRR1151100   Cohesin (Rad21)                     SRP036067 
      5  GSM1318353   SRR1151101   Condensin I (Barren) Interphase     SRP036067 
      6  GSM1318354   SRR1151102   Condensin I (Barren) Asynchronous   SRP036067 
      7  GSM1318355   SRR1151103   Condensin II (CAPH2) Interphase     SRP036067 
      8  GSM1318356   SRR1151104   Condensin I (CAPH2) Asynchronous    SRP036067 
      9  GSM1318357   SRR1151105   Chromator                           SRP036067 
     10  GSM1318358   SRR1151106   GAF                                 SRP036067 
     11  GSM1318359   SRR1151107   CP190                               SRP036067 
     12  GSM1363352   SRR1217606   dTFIIIC220, dCTCF RNAi              SRP036067 
     13  GSM1363353   SRR1217607   Cohesin (Rad21), dCTCF RNAi         SRP036067 
     14  GSM1363354   SRR1217608   Condensin II (CAPH2), dCTCF RNAi    SRP036067 
     15  GSM1363355   SRR1217609   CP190, dCTCF RNAi                   SRP036067 
     16  GSM1363356   SRR1217610   Input, dCTCF RNAi                   SRP036067 

+ 11.2 Supplementary files


 number  GSM          file                                                                                                                                                    url                                                                                                        
-------  -----------  ------------------------------------------------------------------------------------------------------------------------------------------------------  -----------------------------------------------------------------------------------------------------------
      1  GSM1318349   [GSM1318349_dTFIIIC220_1.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318349/suppl/GSM1318349_dTFIIIC220_1.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318349/suppl/GSM1318349_dTFIIIC220_1.wig.gz          
      2  GSM1318350   [GSM1318350_dTFIIIC220_2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318350/suppl/GSM1318350_dTFIIIC220_2.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318350/suppl/GSM1318350_dTFIIIC220_2.wig.gz          
      3  GSM1318351   [GSM1318351_dTFIIIC220_3.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318351/suppl/GSM1318351_dTFIIIC220_3.wig.gz)                     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318351/suppl/GSM1318351_dTFIIIC220_3.wig.gz          
      4  GSM1318352   [GSM1318352_Rad21.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318352/suppl/GSM1318352_Rad21.wig.gz)                                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318352/suppl/GSM1318352_Rad21.wig.gz                 
      5  GSM1318353   [GSM1318353_Barren_int.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318353/suppl/GSM1318353_Barren_int.wig.gz)                         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318353/suppl/GSM1318353_Barren_int.wig.gz            
      6  GSM1318354   [GSM1318354_Barren.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318354/suppl/GSM1318354_Barren.wig.gz)                                 ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318354/suppl/GSM1318354_Barren.wig.gz                
      7  GSM1318355   [GSM1318355_CAPH2_int.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318355/suppl/GSM1318355_CAPH2_int.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318355/suppl/GSM1318355_CAPH2_int.wig.gz             
      8  GSM1318356   [GSM1318356_CAPH2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318356/suppl/GSM1318356_CAPH2.wig.gz)                                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318356/suppl/GSM1318356_CAPH2.wig.gz                 
      9  GSM1318357   [GSM1318357_Chromator.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318357/suppl/GSM1318357_Chromator.wig.gz)                           ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318357/suppl/GSM1318357_Chromator.wig.gz             
     10  GSM1318358   [GSM1318358_GAF.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318358/suppl/GSM1318358_GAF.wig.gz)                                       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318358/suppl/GSM1318358_GAF.wig.gz                   
     11  GSM1318359   [GSM1318359_CP190.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318359/suppl/GSM1318359_CP190.wig.gz)                                   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1318nnn/GSM1318359/suppl/GSM1318359_CP190.wig.gz                 
     12  GSM1363352   [GSM1363352_dTFIIIC220_dCTCF-RNAi.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1363nnn/GSM1363352/suppl/GSM1363352_dTFIIIC220_dCTCF-RNAi.wig.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1363nnn/GSM1363352/suppl/GSM1363352_dTFIIIC220_dCTCF-RNAi.wig.gz 
     13  GSM1363353   [GSM1363353_Rad21_dCTCF-RNAi.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1363nnn/GSM1363353/suppl/GSM1363353_Rad21_dCTCF-RNAi.wig.gz)             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1363nnn/GSM1363353/suppl/GSM1363353_Rad21_dCTCF-RNAi.wig.gz      
     14  GSM1363354   [GSM1363354_CAPH2_dCTCF-RNAi.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1363nnn/GSM1363354/suppl/GSM1363354_CAPH2_dCTCF-RNAi.wig.gz)             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1363nnn/GSM1363354/suppl/GSM1363354_CAPH2_dCTCF-RNAi.wig.gz      
     15  GSM1363355   [GSM1363355_CP190_dCTCF-RNAi.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1363nnn/GSM1363355/suppl/GSM1363355_CP190_dCTCF-RNAi.wig.gz)             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1363nnn/GSM1363355/suppl/GSM1363355_CP190_dCTCF-RNAi.wig.gz      
     16  GSM1363356   [GSM1363356_Input_dCTCF-RNAi.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1363nnn/GSM1363356/suppl/GSM1363356_Input_dCTCF-RNAi.wig.gz)             ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM1363nnn/GSM1363356/suppl/GSM1363356_Input_dCTCF-RNAi.wig.gz      


### 12. CBP ChIP-seq from Kc cells (GSE62904)

Details: see **section 10.**


### 13. Chromator ChIP-seq from Kc cells (GSE62904)

Details: see **section 10.**


### 14. Barren ChIP-seq from Kc cells (GSE62904)

Details: see **section 10.**


### 15. CP190 ChIP-seq from Kc cells (GSE62904)

Details: see **section 10.**


### 16. CTCF ChIP-seq from Kc cells (GSE54529)

Details: see **section 11**


### 17. DREF ChIP-seq from Kc cells (GSE62904)

Details: see **section 10.**


### 18. GAF ChIP-seq from Kc cells (GSE54529)

Details: see **section 11.**


### 19. IIC220 ChIP-seq from Kc cells (GSE54529)

Details: see **section 11.**


### 20. L3mbt ChIP-seq from Kc cells (GSE62904)

Details: see **section 10.**


### 21. Modmdg4 ChIP-seq from Kc cells (GSE62904)

Details: see **section 10.**


### 22. Rad21 ChIP-seq from Kc cells (GSE62904)

Details: see **section 10.**


### 23. Su(Hw) ChIP-seq from Kc cells (GSE30740)

+ Accession Number: GEO: [GSE30740](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE30740)  

+ Number of samples: 14

+ Library: ChIP-seq

+ Title: Regulation of chromatin organization and inducible gene expression by a Drosophila insulator

+ Reference: Wood et al. (2011)

> Wood, A.M., Van Bortle, K., Ramos, E., Takenaka, N., Rohrbaugh, M., Jones, B.C., Jones, K.C., and Corces, V.G. (2011). Regulation of chromatin organization and inducible gene expression by a Drosophila insulator. Mol. Cell 44, 29–38.

+ 23.1 Sample information


 number  gsm         run         title                        study     
-------  ----------  ----------  ---------------------------  ----------
      1  GSM762836   SRR317176   CP190_20HE_0hrs_ChIPSeq      SRP007592 
      2  GSM762837   SRR317177   CP190_20HE_3hrs_ChIPSeq      SRP007592 
      3  GSM762838   SRR317178   CP190_20HE_48hrs_ChIPSeq     SRP007592 
      4  GSM762839   SRR317179   Su(Hw)_20HE_0hrs_ChIPSeq     SRP007592 
      5  GSM762840   SRR317180   Su(Hw)_20HE_3hrs_ChIPSeq     SRP007592 
      6  GSM762841   SRR317181   Su(Hw)_20HE_48hrs_ChIPSeq    SRP007592 
      7  GSM762842   SRR317182   dCTCF_20HE_0hrs_ChIPSeq      SRP007592 
      8  GSM762843   SRR317183   dCTCF_20HE_3hrs_ChIPSeq      SRP007592 
      9  GSM762844   SRR317184   dCTCF_20HE_48hrs_ChIPSeq     SRP007592 
     10  GSM762845   SRR317185   BEAF-32_20HE_0hrs_ChIPSeq    SRP007592 
     11  GSM762846   SRR317186   BEAF-32_20HE_3hrs_ChIPSeq    SRP007592 
     12  GSM762847   SRR317187   BEAF-32_20HE_48hrs_ChIPSeq   SRP007592 
     13  GSM762848   SRR317188   Input_20HE_0hrs_ChIPSeq      SRP007592 
     14  GSM762849   SRR317189   Input_20HE_0hrs_ChIPSeq2     SRP007592 

+ 23.2 Supplementary files


 number  GSM          file                                                                                                                                                          url                                                                                                          
-------  -----------  ------------------------------------------------------------------------------------------------------------------------------------------------------------  -------------------------------------------------------------------------------------------------------------
      1  GSM7628361   [GSM762836_CP190_20HE_0hrs_ChIPSeq.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762836/suppl/GSM762836_CP190_20HE_0hrs_ChIPSeq.bed.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762836/suppl/GSM762836_CP190_20HE_0hrs_ChIPSeq.bed.gz    
      2  GSM7628362   [GSM762836_CP190_20HE_0hrs_ChIPSeq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762836/suppl/GSM762836_CP190_20HE_0hrs_ChIPSeq.wig.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762836/suppl/GSM762836_CP190_20HE_0hrs_ChIPSeq.wig.gz    
      3  GSM7628371   [GSM762837_CP190_20HE_3hrs_ChIPSeq.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762837/suppl/GSM762837_CP190_20HE_3hrs_ChIPSeq.bed.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762837/suppl/GSM762837_CP190_20HE_3hrs_ChIPSeq.bed.gz    
      4  GSM7628372   [GSM762837_CP190_20HE_3hrs_ChIPSeq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762837/suppl/GSM762837_CP190_20HE_3hrs_ChIPSeq.wig.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762837/suppl/GSM762837_CP190_20HE_3hrs_ChIPSeq.wig.gz    
      5  GSM7628381   [GSM762838_CP190_20HE_48hrs_ChIPSeq.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762838/suppl/GSM762838_CP190_20HE_48hrs_ChIPSeq.bed.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762838/suppl/GSM762838_CP190_20HE_48hrs_ChIPSeq.bed.gz   
      6  GSM7628382   [GSM762838_CP190_20HE_48hrs_ChIPSeq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762838/suppl/GSM762838_CP190_20HE_48hrs_ChIPSeq.wig.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762838/suppl/GSM762838_CP190_20HE_48hrs_ChIPSeq.wig.gz   
      7  GSM7628391   [GSM762839_Su_Hw_20HE_0hrs_ChIPSeq.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762839/suppl/GSM762839_Su_Hw_20HE_0hrs_ChIPSeq.bed.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762839/suppl/GSM762839_Su_Hw_20HE_0hrs_ChIPSeq.bed.gz    
      8  GSM7628392   [GSM762839_Su_Hw_20HE_0hrs_ChIPSeq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762839/suppl/GSM762839_Su_Hw_20HE_0hrs_ChIPSeq.wig.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762839/suppl/GSM762839_Su_Hw_20HE_0hrs_ChIPSeq.wig.gz    
      9  GSM7628401   [GSM762840_Su_Hw_20HE_3hrs_ChIPSeq.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762840/suppl/GSM762840_Su_Hw_20HE_3hrs_ChIPSeq.bed.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762840/suppl/GSM762840_Su_Hw_20HE_3hrs_ChIPSeq.bed.gz    
     10  GSM7628402   [GSM762840_Su_Hw_20HE_3hrs_ChIPSeq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762840/suppl/GSM762840_Su_Hw_20HE_3hrs_ChIPSeq.wig.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762840/suppl/GSM762840_Su_Hw_20HE_3hrs_ChIPSeq.wig.gz    
     11  GSM7628411   [GSM762841_Su_Hw_20HE_48hrs_ChIPSeq.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762841/suppl/GSM762841_Su_Hw_20HE_48hrs_ChIPSeq.bed.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762841/suppl/GSM762841_Su_Hw_20HE_48hrs_ChIPSeq.bed.gz   
     12  GSM7628412   [GSM762841_Su_Hw_20HE_48hrs_ChIPSeq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762841/suppl/GSM762841_Su_Hw_20HE_48hrs_ChIPSeq.wig.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762841/suppl/GSM762841_Su_Hw_20HE_48hrs_ChIPSeq.wig.gz   
     13  GSM7628421   [GSM762842_dCTCF_20HE_0hrs_ChIPSeq.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762842/suppl/GSM762842_dCTCF_20HE_0hrs_ChIPSeq.bed.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762842/suppl/GSM762842_dCTCF_20HE_0hrs_ChIPSeq.bed.gz    
     14  GSM7628422   [GSM762842_dCTCF_20HE_0hrs_ChIPSeq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762842/suppl/GSM762842_dCTCF_20HE_0hrs_ChIPSeq.wig.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762842/suppl/GSM762842_dCTCF_20HE_0hrs_ChIPSeq.wig.gz    
     15  GSM7628431   [GSM762843_dCTCF_20HE_3hrs_ChIPSeq.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762843/suppl/GSM762843_dCTCF_20HE_3hrs_ChIPSeq.bed.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762843/suppl/GSM762843_dCTCF_20HE_3hrs_ChIPSeq.bed.gz    
     16  GSM7628432   [GSM762843_dCTCF_20HE_3hrs_ChIPSeq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762843/suppl/GSM762843_dCTCF_20HE_3hrs_ChIPSeq.wig.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762843/suppl/GSM762843_dCTCF_20HE_3hrs_ChIPSeq.wig.gz    
     17  GSM7628441   [GSM762844_dCTCF_20HE_48hrs_ChIPSeq.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762844/suppl/GSM762844_dCTCF_20HE_48hrs_ChIPSeq.bed.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762844/suppl/GSM762844_dCTCF_20HE_48hrs_ChIPSeq.bed.gz   
     18  GSM7628442   [GSM762844_dCTCF_20HE_48hrs_ChIPSeq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762844/suppl/GSM762844_dCTCF_20HE_48hrs_ChIPSeq.wig.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762844/suppl/GSM762844_dCTCF_20HE_48hrs_ChIPSeq.wig.gz   
     19  GSM7628451   [GSM762845_BEAF-32_20HE_0hrs_ChIPSeq.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762845/suppl/GSM762845_BEAF-32_20HE_0hrs_ChIPSeq.bed.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762845/suppl/GSM762845_BEAF-32_20HE_0hrs_ChIPSeq.bed.gz  
     20  GSM7628452   [GSM762845_BEAF-32_20HE_0hrs_ChIPSeq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762845/suppl/GSM762845_BEAF-32_20HE_0hrs_ChIPSeq.wig.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762845/suppl/GSM762845_BEAF-32_20HE_0hrs_ChIPSeq.wig.gz  
     21  GSM7628461   [GSM762846_BEAF-32_20HE_3hrs_ChIPSeq.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762846/suppl/GSM762846_BEAF-32_20HE_3hrs_ChIPSeq.bed.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762846/suppl/GSM762846_BEAF-32_20HE_3hrs_ChIPSeq.bed.gz  
     22  GSM7628462   [GSM762846_BEAF-32_20HE_3hrs_ChIPSeq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762846/suppl/GSM762846_BEAF-32_20HE_3hrs_ChIPSeq.wig.gz)     ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762846/suppl/GSM762846_BEAF-32_20HE_3hrs_ChIPSeq.wig.gz  
     23  GSM7628471   [GSM762847_BEAF-32_20HE_48hrs_ChIPSeq.bed.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762847/suppl/GSM762847_BEAF-32_20HE_48hrs_ChIPSeq.bed.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762847/suppl/GSM762847_BEAF-32_20HE_48hrs_ChIPSeq.bed.gz 
     24  GSM7628472   [GSM762847_BEAF-32_20HE_48hrs_ChIPSeq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762847/suppl/GSM762847_BEAF-32_20HE_48hrs_ChIPSeq.wig.gz)   ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762847/suppl/GSM762847_BEAF-32_20HE_48hrs_ChIPSeq.wig.gz 
     25  GSM762848    [GSM762848_Input_20HE_0hrs_ChIPseq.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762848/suppl/GSM762848_Input_20HE_0hrs_ChIPseq.wig.gz)         ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762848/suppl/GSM762848_Input_20HE_0hrs_ChIPseq.wig.gz    
     26  GSM762849    [GSM762849_Input_20HE_0hrs_ChIPseq2.wig.gz](ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762849/suppl/GSM762849_Input_20HE_0hrs_ChIPseq2.wig.gz)       ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM762nnn/GSM762849/suppl/GSM762849_Input_20HE_0hrs_ChIPseq2.wig.gz   

### 24. TFIIIC ChIP-seq from Kc cells (GSE62904)

Details: see **section 10.**


### 25. Z4 ChIP-seq from Kc cells (GSE62904)

Details: see **section 10.**


### 26. FlyBase RNA-seq profile 

See [flybase](http://flybase.org/static_pages/rna-seq/rna-seq_profile_search.html) or [modENCODE](http://www.modencode.org/)

url: http://flybase.org/static_pages/rna-seq/rna-seq_profile_search.html



