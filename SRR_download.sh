#!/bin/bash

## This code is for download six fastq files. ##
PROGRAM="fastq-dump"
SAMPLE=("SRR391535" "SRR391536" "SRR391537" "SRR391538" "SRR391539" "SRR391541")
######################################

for i in "${SAMPLE[@]}"
do
    CMD="${PROGRAM} ${i}"
    echo ${CMD}
    eval ${CMD}
done
