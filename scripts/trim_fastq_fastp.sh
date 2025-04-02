#!/bin/bash

sample_id=$1
input_dir="/path/to/trimmed"
output_dir="/path/to/trimmed"

fastp \
  -i ${input_dir}/${sample_id}_R1_merged.fastq.gz \
  -I ${input_dir}/${sample_id}_R2_merged.fastq.gz \
  -o ${output_dir}/${sample_id}_R1_trimmed.fastq.gz \
  -O ${output_dir}/${sample_id}_R2_trimmed.fastq.gz \
  --html ${output_dir}/${sample_id}_fastp.html \
  --json ${output_dir}/${sample_id}_fastp.json \
  --thread 8
