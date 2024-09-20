#!/bin/bash
#$ -N module_test
#$ -l h_rt=00:01:00
#$ -l h_vmem=4G
#$ -o $HOME/logs/
#$ -e $HOME/logs/
#$ -pe sharedmem 1 

echo 'Testing module load'
module load igmm/apps/samtools/1.13
samtools
echo 'Test done'

