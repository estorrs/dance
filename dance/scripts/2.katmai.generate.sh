#!/bin/bash

cat /diskmnt/Projects/Users/estorrs/data/ancestry/MM/filtered_bam_locations.txt | sed 's/^\(.*\/\(.*\)\.bam.*\)$/bash \/home\/estorrs\/dance\/dance\/scripts\/2.bam_readcounts.sh \/diskmnt\/Projects\/Users\/estorrs\/1000-genomes\/GRCh37\/positions.chr.all.coding.sorted.02maf.10000sampled.sorted.snps.bed \1 \/diskmnt\/Projects\/Users\/estorrs\/data\/ancestry\/MM\/readcounts\/\2.readcount \/diskmnt\/Datasets\/Reference\/LongRanger\/GRCh37\/refdata-hg19-2.1.0\/fasta\/genome.fa \&/' | sed '0~5 s/$/\nwait/g' > /home/estorrs/dance/dance/scripts/2.katmai.run.sh
