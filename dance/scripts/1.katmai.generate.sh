#!/bin/bash

cat /diskmnt/Projects/Users/estorrs/data/ancestry/MM/symlinked_input_bam_locations.txt | sed 's/^\(.*\/\(.*\)\.bam.*\)$/bash \/home\/estorrs\/dance\/dance\/scripts\/1.filter_bams.sh \/diskmnt\/Projects\/Users\/estorrs\/1000-genomes\/GRCh37\/positions.chr.all.coding.sorted.02maf.10000sampled.sorted.snps.bed \1 \/diskmnt\/Projects\/Users\/estorrs\/data\/ancestry\/MM\/filtered_bams\/\2.1000-genome_filtered.bam \&/' | sed '0~9 s/$/\nwait/g' > /home/estorrs/dance/dance/scripts/1.katmai.run.sh
