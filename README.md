# RNA-seq Processing Pipeline (Paired-end, Multi-lane)

This repo contains shell and R scripts used to process RNA-seq data:
from raw fastq files → to aligned BAM files → to gene count matrices.

## Workflow Steps

1. **Merge raw fastq files (cat)**
2. **Quality trimming (fastp)**
3. **Quality control (fastqc)**
4. **Read alignment (STAR)**
5. **Gene-level quantification (featureCounts)**

## File Structure

- `data/`: Raw data (not uploaded) & processed outputs
- `scripts/`: Shell and R scripts used in the pipeline
- `results/`: Output files (QC reports, BAMs, counts)
- `docs/`: Summary & explanation of steps

## Requirements

- fastp
- fastqc
- STAR
- subread (for featureCounts)
- R + BiocManager + Rsubread

## Author
dorothiakantapia
