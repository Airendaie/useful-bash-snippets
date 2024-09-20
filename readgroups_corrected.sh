#!/bin/bash
#Script to add read groups to bam files to allow GATK to function correctly
#SGE flags
#$ -N correctReadGroups
#$ -l h_rt=24:00:00
#$ -l h_vmem=12G
#$ -o $HOME/logs/
#$ -e $HOME/logs
#$ -pe sharedmem 1
#$ -M s2118930@ed.ac.uk	-m bea
#$ -V


#module load exports/igmm/software/pkg/el7/apps/picard/2.17.11

#MAIN=/exports/eddie/scratch/s2118930/data/GATK
VCFS=/exports/eddie/scratch/s2118930/data/sheep_ref_genotypes/readgroupstest

for f in ${VCFS}/*.vcf.gz ; do
	NAME=basename -s _GVCF.vcf.gz $f
	
	java -jar /exports/igmm/software/pkg/el7/apps/picard/2.17.11/picard.jar \
	AddOrReplaceReadGroups \
	I=${VCFS}/${NAME}_GVCF.vcf.gz \
	O=${VCFS}/${NAME}.g.vcf.gz \
	RGID=${NAME} \
	RGSM=${NAME} \
	RGPL=illumina \
	RGLB=lib1 \
	RGPU=SBF
done;
