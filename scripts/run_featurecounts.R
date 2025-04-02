# run_featurecounts.R

# Install packages if needed
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("Rsubread", ask = FALSE)

# Load library
library(Rsubread)

# Define input BAM files
files <- c("/Volumes/Seagate/ANALYZED_DATA/Dorothy/bam/Sample_US-1467561_Aligned.sortedByCoord.out.bam")

# Run featureCounts
fc <- featureCounts(
    files = files,
    annot.ext = "/Users/dorothiakantapia/Downloads/merged_output.gtf",
    isGTFAnnotationFile = TRUE,
    GTF.attrType = "gene_id",
    useMetaFeatures = TRUE,
    isPairedEnd = TRUE
)

# View results
head(fc$counts)

# Save results
write.table(fc$counts, file = "US-1467561_gene_counts.txt", sep = "\t", quote = FALSE, col.names = NA)
write.csv(fc$counts, file = "US-1467561_gene_counts.csv", row.names = TRUE)

# Check current directory
getwd()
