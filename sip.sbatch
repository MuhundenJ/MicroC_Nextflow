#!/bin/sh
#SBATCH --mem 40000


conda activate MicroC_Viz


java -jar SIP-1.6.4.jar cool merge_Levine.mcool dm6.chrom.sizes loops_new_v1 /home/jmuhunden/miniconda3/envs/SIP/bin/cooltools /home/jmuhunden/miniconda3/envs/SIP/bin/cooler -isDroso false -res 500 -factor 2 -t 1500 -fdr 0.1 -d 15 -mat 5000 -nbZero 6 -del true -cpu 1 -g 3 -min 2 -max 2
