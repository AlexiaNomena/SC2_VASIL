# install library outbreakinfo https://rdrr.io/github/outbreak-info/R-outbreak-info/
library(outbreakinfo)

lineages_of_interest <- "EG.5.1"

############ Login to gisaid.org in browser to initialize the session in this script:
print("Please login to gisaid.org in browser to initialize the session in this script.")
outbreakinfo::authenticateUser()


mutations = getMutationsByLineage(pangolin_lineage=lineages_of_interest, frequency=0.75, logInfo = FALSE)

# Plot the mutations as a heatmap
#plotMutationHeatmap(mutations, title = "S-gene mutations in lineages")

# filter for Spike:
mutations_s <- subset(mutations, gene=="S")

### filter only muts

lin_mut <- paste0(mutations_s$ref_aa,as.character(mutations_s$codon_num),mutations_s$alt_aa)

# Save mutations as txt files with each mutations in a new line
print(lin_mut)
write.table(lin_mut, "data/input/EG_5_1.txt", eol="\n", row.names = FALSE)

