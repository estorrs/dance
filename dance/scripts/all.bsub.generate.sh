#!/bin/bash

INPUT_BAMS_LIST="/gscmnt/gc2737/ding/estorrs/ancestry/MMRF/input_bam_locations.txt"
GENOMES_POSITIONS="\/gscmnt\/gc2737\/ding\/estorrs\/1000-genomes\/GRCh37\/positions.all.coding.sorted.02maf.10000sampled.sorted.snps.bed"

FILTERED_BAM_DIR="\/gscmnt\/gc2737\/ding\/estorrs\/ancestry\/MMRF\/filtered_bams\/"
READCOUNTS_DIR="\/gscmnt\/gc2737\/ding\/estorrs\/ancestry\/MMRF\/readcounts\/"

FASTA="\/gscmnt\/gc2737\/ding\/Reference\/hs37d5_plusRibo_plusOncoViruses_plusERCC.20170530.fa"

SCRIPT_LOCATION="\/gscuser\/estorrs\/dance\/dance\/scripts\/all.sh"

# make intermediate directories if needed
mkdir -p $FILTERED_BAM_DIR
mkdir -p $READCOUNTS_DIR

cat $INPUT_BAMS_LIST | sed "s/^\(.*\/\(.*\)\.bam.*\)$/bsub -R 'select[mem>3000] rusage[mem=3000] span[hosts=1]' -M 30000 -oo \2.log -q research-hpc -a 'docker(estorrs\/bio-tools)' 'bash $SCRIPT_LOCATION $GENOMES_POSITIONS \1 \2 $FILTERED_BAM_DIR $READCOUNTS_DIR $FASTA'/" > /gscuser/estorrs/dance/dance/scripts/all.bsub.run.sh
#cat $INPUT_BAMS_LIST | sed "s/^\(.*\/\(.*\)\.bam.*\)$/bash $SCRIPT_LOCATION/" > /gscuser/estorrs/dance/dance/scripts/all.bsub.run.sh
