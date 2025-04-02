#!/bin/bash

sample_id=$1
input_dir="/scratch/spark323/trimmed"
output_dir="/scratch/spark323/trimmed"

fastqc ${input_dir}/${sample_id}_R1_trimmed.fastq.gz \
       ${input_dir}/${sample_id}_R2_trimmed.fastq.gz \
       --outdir=${output_dir}
