#!/bin/bash

1000_GENOMES_POSITIONS=$1
INPUT_BAM_FP=$2
OUTPUT_BAM_FP=$3

samtools index $INPUT_BAM_FP
samtools view -h -L $1000_GENOMES_POSITIONS -o $OUTPUT_BAM_FP $INPUT_BAM_FP