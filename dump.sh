#!/bin/bash
#This is the script for the analysis
#SGE flags
#$ -N testfastqkd        ##TBC1
#$ -cwd
#$ -l h_rt=24:00:00
#$ -l h_vmem=16G
## -r yes
#$ -notify
#$ -M katie.dubarry@ed.ac.uk -m bea
#$ -o $HOME/logs/
#$ -e $HOME/logs/
#$ -pe sharedmem 2
#$ -V
module load anaconda
source activate parallel_sra_install
module load igmm/apps/sratoolkit/2.8.2-1
cd /exports/eddie/scratch/s2118930
mkdir TEMP
mkdir download
parallel-fastq-dump --gzip --split-files --threads 40 -O ./download/ --tmpdir ./TEMP/ --sra-id SRR5749462
source deactivate
