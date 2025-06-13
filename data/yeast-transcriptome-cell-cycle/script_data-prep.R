# Gaëlle Lelandais <gaelle.lelandais@universite-paris-saclay.fr>

# Lecture des données
countData <- as.matrix(read.table("galaxy-export.tabular",
                     header = T, row.names = 1))
# Description des échantillons
colData <- cbind(colnames(countData), seq(0, 245, 5))
colnames(colData) <- c("ID", "Time")

######
# Normalisation des données avec DESeq2
######

library(DESeq2)
dds <- DESeqDataSetFromMatrix(countData = countData, 
                              colData   = colData, design = ~ Time)

# Affichage aux données de comptage
View(counts(dds))

# Réalisation de la normalisation des comptages
dds <- estimateSizeFactors(dds)
sizeFactors(dds)

# Table des comptages normalisés
normCounts <- counts(dds, normalized = TRUE)

######
# Sélection des gènes oscillants
######

# Table des gènes oscillants
geneList  <- read.csv("genes-oscillants.csv", sep = "\t", header = F)
# Vérification de la présence des gènes dans la table de comptages
geneList2 <- geneList[geneList[,2] %in% row.names(normCounts),]

# Création d'une nouvelle table de comptage
normCounts2 <- normCounts[geneList2[,2],]

# Ecriture des résultats
write.table(normCounts2, file = "cell-cycle_SCERE_DUO.txt",
            quote = F, sep = "\t", col.names = T, row.names = T)
