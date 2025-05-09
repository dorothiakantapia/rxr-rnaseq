#!/bin/bash

sample_id=$1
genome_dir="/path/to/STAR_Index"
input_dir="/path/to/trimmed"
output_dir="/path/to/aligned/${sample_id}"

mkdir -p ${output_dir}

STAR \
  --genomeDir ${genome_dir} \
  --readFilesIn ${input_dir}/${sample_id}_R1_trimmed.fastq.gz ${input_dir}/${sample_id}_R2_trimmed.fastq.gz \
  --readFilesCommand zcat \
  --runThreadN 12 \
  --outFileNamePrefix ${output_dir}/ \
  --outSAMtype BAM SortedByCoordinate \
  --limitBAMsortRAM 100000000000
