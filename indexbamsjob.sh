#!/bin/bash
#SGE flags
#$ -N index bam files
#$ -l h_rt=6:00:00
#$ -l h_vmem=16G
#$ -M katie.dubarry@ed.ac.uk -m bea
#$ -o $HOME/logs/
#$ -e $HOME/logs/
#$ -V


module load igmm/apps/samtools/1.13

for file in /exports/eddie/scratch/s2118930/data/refPanelNew/input
do
	echo 'zug zug'
	samtools index ${file}
	echo 'job done'
done
