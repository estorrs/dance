#!/bin/bash

INPUT_BAM_FP=$1
OUTPUT_VCF_FP=$2
MIN_DEPTH=$3
MINOR_THRESHOLD=4
REFERENCE_THRESHOLD=8

python call_bams.py $INPUT_BAM_FP --depth $MIN_DEPTH --minor-threshold $MINOR_THRESHOLD --reference-threshold $REFERENCE_THRESHOLD > $OUTPUT_VCF_FP
