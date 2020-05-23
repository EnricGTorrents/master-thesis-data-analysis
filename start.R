# Aquest script estableix el directori de treball i carrega totes les llibreries utilitzades
# Per cridar aquest script utilitzar l'ordre source("start.R")

# L'ordre i funció dels scripts és el següent:
# 1 start.R (carrega les llibreries utilitzades)
# 2 plink.R (genera, importa i organitza els arxius de Plink)
# 3 hemisferi.R (ordena les dades, estableix els hemisferis i la significació dels p-valors)
# 4 heatmaps.R (genera mapes de calor per tots els dataframes)
# 5 FDRs.R (estableix les false discovery rates per tots els dataframes)
# 6 significance.R (sumaris i gràfics dels p-valors significatius)
# 7 ANOVAs.R (analisis de variancia dels casos significatius ¿? )

# setwd("~/Insync/enricgarcia80@gmail.com/Google Drive/Dropbox/TFM/Dades Analisis/Analisis")

library(tidyverse)
library(openxlsx)
library(dplyr)
library(plyr)
library(ggplot2)
library(qqman)
library(plotrix)
require(gridExtra)

library(ggpubr)
library(rstatix)
library(broom)