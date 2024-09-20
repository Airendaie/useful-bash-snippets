#!/bin/bash
#To index all bam files in a folder. Must load modules first!

for file in *.bam
do
	samtools index ${file}
done
