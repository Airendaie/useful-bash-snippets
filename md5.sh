#!/bin/bash
#Running the script from inside the raw data folder on one of the staging nodes
touch ./passed_report.txt
touch ./failed_report.txt
 
for f in ./*.fastq.gz; do
        key="$(md5sum $f|awk '{print$1}')"
        check=$(dirname $f)
        if grep -q $key ${check}/*.md5 ; then
                printf '%s\r\n' "$f Passed md5sum check" >> ./passed_report.txt
        else
                printf '%s\t %s\t %s\r\n' "$f Failed md5sum check! Current md5sum: $key" >> ./failed_report.txt
        fi
done;
