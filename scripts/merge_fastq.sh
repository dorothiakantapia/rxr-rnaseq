#!/bin/bash

sample_id=$1
input_dir="/path/to/samples/${sample_id}"
output_dir="/path/to/trimmed"

cat ${input_dir}/*_R1_001.fastq.gz > ${output_dir}/${sample_id}_R1_merged.fastq.gz
cat ${input_dir}/*_R2_001.fastq.gz > ${output_dir}/${sample_id}_R2_merged.fastq.gz
