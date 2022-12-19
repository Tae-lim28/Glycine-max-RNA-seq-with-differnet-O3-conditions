#!/bin/bash

## This code is for trimmimg of six fastq files. ##
PROGRAM="sickle"
MODE="se"
QUAL_TYPE="sanger"
LEN_THR="45"
QUAL_THR="35"
SAMPLE=("SRR391535" "SRR391536" "SRR391537" "SRR391538" "SRR391539" "SRR391541")
######################################

for i in "${SAMPLE[@]}"
do
    CMD="${PROGRAM} ${MODE} -f 01_in_fq/${i}.fastq -t ${QUAL_TYPE} -o 02_trimmed_fq/trimmed_${i}.fastq.gz -q ${QUAL_THR} -l ${LEN_THR} --gzip-output"
    echo ${CMD}
    eval ${CMD}
done
