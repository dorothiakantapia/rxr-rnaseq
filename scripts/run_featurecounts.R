# run_featurecounts.R

# Install packages if needed
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("Rsubread", ask = FALSE)

# Load library
library(Rsubread)

sample_id <- "YOUR_SAMPLE_ID"  # <- Change this before running

# Define paths
bam_file <- paste0("/path/to/bam/", sample_id, "_Aligned.sortedByCoord.out.bam")
gtf_file <- "/path/to/annotation/your_annotation_file.gtf"
output_txt <- paste0(sample_id, "_gene_counts.txt")
output_csv <- paste0(sample_id, "_gene_counts.csv")

# Run featureCounts
fc <- featureCounts(
    files = c(bam_file),
    annot.ext = gtf_file,
    isGTFAnnotationFile = TRUE,
    GTF.attrType = "gene_id",
    useMetaFeatures = TRUE,
    isPairedEnd = TRUE
)

# View first few rows
head(fc$counts)

# Save results
write.table(fc$counts, file = output_txt, sep = "\t", quote = FALSE, col.names = NA)
write.csv(fc$counts, file = output_csv, row.names = TRUE)

# Check current working directory
getwd()

