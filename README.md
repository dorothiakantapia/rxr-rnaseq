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

- data/: Raw data (not uploaded) & processed outputs
- scripts/: Shell and R scripts used in the pipeline
- results/: Output files (QC reports, BAMs, counts)
- docs/: Summary & explanation of steps

## Requirements

- fastp
- fastqc
- STAR
- subread (for featureCounts)
- R + BiocManager + Rsubread

## 🛠️ Tool Setup

### Shell-based tools (HPC environment with module system)

The following tools are available via module load:

## 🛠️ Tool Setup

### 🔧 Shell-based tools (HPC environment with module system)

The following tools are available via `module load`:

```bash
module load fastp
module load fastqc
module load star

