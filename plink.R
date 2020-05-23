# Aquest script fa les crides a Plink i organitza els arxius generats

######### ANÀLISIS INTRAGRUP

#### ANÀLISIS AFFECTED

## Executa l'anàlisis sense --genotypic, carrega les dades a R i ordena els arxius en la seva propia carpeta
system('plink1 --noweb --map "mapa.map" --ped "affected.ped" --pheno "fenotip.pheno" --all-pheno  --linear --covar "covariables.co" --covar-number 1,2,4,5,6 --mperm 10000  --out "linear_affected"')
system('mkdir linear_affected')

files_linear_affected_mperm = list.files(pattern="*.mperm")
linear_affected_mperm <- list()
for (i in seq_along(files_linear_affected_mperm)) {
  linear_affected_mperm[[i]] <- read.csv(file = files_linear_affected_mperm[i], sep="")
}
system('mv -t linear_affected *.mperm')

files_linear_affected = list.files(pattern="*.linear")
linear_affected <- list()
for (i in seq_along(files_linear_affected)) {
  linear_affected[[i]] <- read.csv(file = files_linear_affected[i], sep="")
}
system('mv -t linear_affected *.linear')

## Executa l'anàlisis amb --dominant, carrega les dades a R i ordena els arxius en la seva propia carpeta

system('plink1 --noweb --map "mapa.map" --ped "affected.ped" --pheno "fenotip.pheno" --all-pheno  --linear --dominant --covar "covariables.co" --covar-number 1,2,4,5,6 --mperm 10000  --out "linear_affected_dominant"')
system('mkdir linear_affected_dominant')

files_linear_affected_dominant_mperm = list.files(pattern="*.mperm")
linear_affected_dominant_mperm <- list()
for (i in seq_along(files_linear_affected_dominant_mperm)) {
  linear_affected_dominant_mperm[[i]] <- read.csv(file = files_linear_affected_dominant_mperm[i], sep="")
}
system('mv -t linear_affected_dominant *.mperm')

files_linear_affected_dominant = list.files(pattern="*.linear")
linear_affected_dominant <- list()
for (i in seq_along(files_linear_affected_dominant)) {
  linear_affected_dominant[[i]] <- read.csv(file = files_linear_affected_dominant[i], sep="")
}
system('mv -t linear_affected_dominant *.linear')

## Executa l'anàlisis amb --recessive, carrega les dades a R i ordena els arxius en la seva propia carpeta

system('plink1 --noweb --map "mapa.map" --ped "affected.ped" --pheno "fenotip.pheno" --all-pheno  --linear --recessive --covar "covariables.co" --covar-number 1,2,4,5,6 --mperm 10000  --out "linear_affected_recessive"')
system('mkdir linear_affected_recessive')

files_linear_affected_recessive_mperm = list.files(pattern="*.mperm")
linear_affected_recessive_mperm <- list()
for (i in seq_along(files_linear_affected_recessive_mperm)) {
  linear_affected_recessive_mperm[[i]] <- read.csv(file = files_linear_affected_recessive_mperm[i], sep="")
}
system('mv -t linear_affected_recessive *.mperm')

files_linear_affected_recessive = list.files(pattern="*.linear")
linear_affected_recessive <- list()
for (i in seq_along(files_linear_affected_recessive)) {
  linear_affected_recessive[[i]] <- read.csv(file = files_linear_affected_recessive[i], sep="")
}
system('mv -t linear_affected_recessive *.linear')

#### Anàlisis unaffected

## Executa l'anàlisis sense --genotypic, carrega les dades a R i ordena els arxius en la seva propia carpeta

system('plink1 --noweb --map "mapa.map" --ped "unaffected.ped" --pheno "fenotip.pheno" --all-pheno  --linear --covar "covariables.co" --covar-number 1,2,4,5 --mperm 10000  --out "linear_unaffected"')
system('mkdir linear_unaffected')

files_linear_unaffected_mperm = list.files(pattern="*.mperm")
linear_unaffected_mperm <- list()
for (i in seq_along(files_linear_unaffected_mperm)) {
  linear_unaffected_mperm[[i]] <- read.csv(file = files_linear_unaffected_mperm[i], sep="")
}
system('mv -t linear_unaffected *.mperm')

files_linear_unaffected = list.files(pattern="*.linear")
linear_unaffected <- list()
for (i in seq_along(files_linear_unaffected)) {
  linear_unaffected[[i]] <- read.csv(file = files_linear_unaffected[i], sep="")
}
system('mv -t linear_unaffected *.linear')

## Executa l'anàlisis amb --dominant, carrega les dades a R i ordena els arxius en la seva propia carpeta

system('plink1 --noweb --map "mapa.map" --ped "unaffected.ped" --pheno "fenotip.pheno" --all-pheno  --linear --dominant --covar "covariables.co" --covar-number 1,2,4,5 --mperm 10000  --out "linear_unaffected_dominant"')
system('mkdir linear_unaffected_dominant')

files_linear_unaffected_dominant_mperm = list.files(pattern="*.mperm")
linear_unaffected_dominant_mperm <- list()
for (i in seq_along(files_linear_unaffected_dominant_mperm)) {
  linear_unaffected_dominant_mperm[[i]] <- read.csv(file = files_linear_unaffected_dominant_mperm[i], sep="")
}
system('mv -t linear_unaffected_dominant *.mperm')

files_linear_unaffected_dominant = list.files(pattern="*.linear")
linear_unaffected_dominant <- list()
for (i in seq_along(files_linear_unaffected_dominant)) {
  linear_unaffected_dominant[[i]] <- read.csv(file = files_linear_unaffected_dominant[i], sep="")
}
system('mv -t linear_unaffected_dominant *.linear')

## Executa l'anàlisis amb --recessive, carrega les dades a R i ordena els arxius en la seva propia carpeta

system('plink1 --noweb --map "mapa.map" --ped "unaffected.ped" --pheno "fenotip.pheno" --all-pheno  --linear --recessive --covar "covariables.co" --covar-number 1,2,4,5 --mperm 10000  --out "linear_unaffected_recessive"')
system('mkdir linear_unaffected_recessive')

files_linear_unaffected_recessive_mperm = list.files(pattern="*.mperm")
linear_unaffected_recessive_mperm <- list()
for (i in seq_along(files_linear_unaffected_recessive_mperm)) {
  linear_unaffected_recessive_mperm[[i]] <- read.csv(file = files_linear_unaffected_recessive_mperm[i], sep="")
}
system('mv -t linear_unaffected_recessive *.mperm')

files_linear_unaffected_recessive = list.files(pattern="*.linear")
linear_unaffected_recessive <- list()
for (i in seq_along(files_linear_unaffected_recessive)) {
  linear_unaffected_recessive[[i]] <- read.csv(file = files_linear_unaffected_recessive[i], sep="")
}
system('mv -t linear_unaffected_recessive *.linear')

######### ANÀLISIS AMB TOTS ELS INDIVIDUS

system('plink1 --noweb --map "mapa.map" --ped "pedigree.ped" --pheno "fenotip.pheno" --all-pheno --linear --covar "covariables2.co" --covar-number 1,2,4,5,8 --interaction --parameters 1,2,3,4,5,6,11 --out "linear_ALL_interaction"')
system('mkdir linear_ALL_interaction')

files_linear_ALL_interaction = list.files(pattern="*.linear")
linear_ALL_interaction <- list()
for (i in seq_along(files_linear_ALL_interaction)) {
  linear_ALL_interaction[[i]] <- read.csv(file = files_linear_ALL_interaction[i], sep="")
}
system('mv -t linear_ALL_interaction *.linear')

# Guarda els logs i elimina els fitxers que no s'utilitzen
rm(list=ls(all=TRUE)[sapply(mget(ls(all=TRUE)), class) == "character"])
system("mkdir logs")
system("mv *.log logs")

# Definim funcions per establir la significació a 0.05 i 0.01

test_significance <- function(dataframe) {
  dataframe$Sig0.05 <- (dataframe$P <= 0.05)
  return(dataframe)
}

test_significance_0.01 <- function(dataframe) {
  dataframe$Sig0.01 <- (dataframe$P <= 0.01)
  return(dataframe)
}

# Afegeix noves columnes de significació a tots els anàlisis
linear_affected <- lapply(linear_affected, test_significance)
linear_affected_dominant <- lapply(linear_affected_dominant, test_significance)
linear_affected_recessive <- lapply(linear_affected_recessive, test_significance)
linear_affected <- lapply(linear_affected, test_significance_0.01)
linear_affected_dominant <- lapply(linear_affected_dominant, test_significance_0.01)
linear_affected_recessive <- lapply(linear_affected_recessive, test_significance_0.01)
linear_unaffected <- lapply(linear_unaffected, test_significance)
linear_unaffected_dominant <- lapply(linear_unaffected_dominant, test_significance)
linear_unaffected_recessive <- lapply(linear_unaffected_recessive, test_significance)
linear_unaffected <- lapply(linear_unaffected, test_significance_0.01)
linear_unaffected_dominant <- lapply(linear_unaffected_dominant, test_significance_0.01)
linear_unaffected_recessive <- lapply(linear_unaffected_recessive, test_significance_0.01)
linear_ALL_interaction <- lapply(linear_ALL_interaction, test_significance)
linear_ALL_interaction <- lapply(linear_ALL_interaction, test_significance_0.01)

# Afegeix número de fenotip als dataframes
# names(mylist) <- c("1", "10", "100", "101", "102", "103", "104", "105", "11", "12", "13", "14", "15", "16", "17", "18", "19", "2", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "3", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "4", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "5", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "6", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "7", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "8", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "9", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99")
names(linear_affected) <- c(1, 10, 100, 101, 102, 103, 104, 105, 11, 12, 13, 14, 15, 16, 17, 18, 19, 2, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 3, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 4, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 5, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 6, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 7, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 8, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 9, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)
names(linear_affected_dominant) <- c(1, 10, 100, 101, 102, 103, 104, 105, 11, 12, 13, 14, 15, 16, 17, 18, 19, 2, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 3, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 4, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 5, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 6, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 7, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 8, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 9, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)
names(linear_affected_recessive) <- c(1, 10, 100, 101, 102, 103, 104, 105, 11, 12, 13, 14, 15, 16, 17, 18, 19, 2, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 3, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 4, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 5, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 6, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 7, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 8, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 9, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)
names(linear_unaffected) <- c(1, 10, 100, 101, 102, 103, 104, 105, 11, 12, 13, 14, 15, 16, 17, 18, 19, 2, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 3, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 4, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 5, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 6, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 7, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 8, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 9, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)
names(linear_unaffected_dominant) <- c(1, 10, 100, 101, 102, 103, 104, 105, 11, 12, 13, 14, 15, 16, 17, 18, 19, 2, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 3, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 4, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 5, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 6, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 7, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 8, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 9, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)
names(linear_unaffected_recessive) <- c(1, 10, 100, 101, 102, 103, 104, 105, 11, 12, 13, 14, 15, 16, 17, 18, 19, 2, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 3, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 4, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 5, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 6, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 7, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 8, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 9, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)
names(linear_ALL_interaction) <- c(1, 10, 100, 101, 102, 103, 104, 105, 11, 12, 13, 14, 15, 16, 17, 18, 19, 2, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 3, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 4, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 5, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 6, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 7, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 8, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 9, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)

# Guarda els fitxers en Excel
write.xlsx(linear_affected, "linear_affected.xlsx")
write.xlsx(linear_affected_dominant, "linear_affected_dominant.xlsx")
write.xlsx(linear_affected_recessive, "linear_affected_recessive.xlsx")
write.xlsx(linear_unaffected, "linear_unaffected.xlsx")
write.xlsx(linear_unaffected_dominant, "linear_unaffected_dominant.xlsx")
write.xlsx(linear_unaffected_recessive, "linear_unaffected_recessive.xlsx")
write.xlsx(linear_ALL_interaction, "linear_ALL_interaction.xlsx")
system('mkdir excel')
system('mv -t excel *.xlsx')

# Crea dataframe unificada
linear_affected_DF <- ldply(linear_affected ,rbind)
linear_affected_dominant_DF <- ldply(linear_affected_dominant ,rbind)
linear_affected_recessive_DF <- ldply(linear_affected_recessive ,rbind)
linear_unaffected_DF <- ldply(linear_unaffected ,rbind)
linear_unaffected_dominant_DF <- ldply(linear_unaffected_dominant ,rbind)
linear_unaffected_recessive_DF <- ldply(linear_unaffected_recessive ,rbind)
linear_ALL_interaction_DF <- ldply(linear_ALL_interaction ,rbind)

# Guarda els dataframes en CSV
write.csv(linear_affected_DF,"linear_affected.csv", row.names = FALSE)
write.csv(linear_affected_dominant_DF,"linear_affected_dominant.csv", row.names = FALSE)
write.csv(linear_affected_recessive_DF,"linear_affected_recessive.csv", row.names = FALSE)
write.csv(linear_unaffected_DF,"linear_unaffected.csv", row.names = FALSE)
write.csv(linear_unaffected_dominant_DF,"linear_unaffected_dominant.csv", row.names = FALSE)
write.csv(linear_unaffected_recessive_DF,"linear_unaffected_recessive.csv", row.names = FALSE)
write.csv(linear_ALL_interaction_DF,"linear_ALL_interaction.csv", row.names = FALSE)
system("mkdir CSV")
system('mv -t CSV *.csv')


# Guardar el workspace
# save.image(file='analisis.RData')