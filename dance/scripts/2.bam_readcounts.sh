#!/bin/bash

1000_GENOMES_POSITIONS=$1
INPUT_BAM_FP=$2
OUTPUT_READCOUNT_FP=$3

bam-readcount -w 1 -l $1000_GENOMES_POSITIONS $INPUT_BAM_FP > $OUTPUT_READCOUNT_FP
