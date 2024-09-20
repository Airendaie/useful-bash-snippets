#!/bin/bash

for folder in *; do
    (cd "$folder" && processResult Aligned.sortedByCoord.out.bam)
    mv "$folder/Aligned.sortedByCoord.out.bam" "$folder/${folder}.sortedByCoord.bam"
done
