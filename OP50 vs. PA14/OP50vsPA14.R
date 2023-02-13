mycounts <- read.table("GSE119292_genes_counts.txt", header = TRUE)
tail(mycounts)

SamplesOfInterest <- mycounts[, c(1, 5:10)]
SamplesOfInterest
colnames(SamplesOfInterest) <- c("GeneID", "N2_OP50_1", "N2_PA14_1", "N2_OP50_2", "N2_PA14_2", "N2_OP50_3", "N2_PA14_3")
head(SamplesOfInterest)
write.csv(SamplesOfInterest, "OP50_vs_PA14.csv")

OP50 <- SamplesOfInterest[, c(1, 2:4)]
OP50
OP50$Mean <- rowMeans(OP50[2:4], na.rm = TRUE)
OP50
OP50$Log10 <- log10(OP50$Mean)
OP50
OP50$Log2 <- log2(OP50$Mean)
OP50
write.csv(OP50, "OP50.csv")



PA14 <- SamplesOfInterest[, c(1, 5:7)]
PA14
PA14$Mean <- rowMeans(PA14[2:4], na.rm = TRUE)
PA14
PA14$Log10 <- log10(PA14$Mean)
PA14
PA14$Log2 <- log2(PA14$Mean)
PA14
write.csv(PA14, "PA14.csv")
