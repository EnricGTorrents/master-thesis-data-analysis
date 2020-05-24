
library(emmeans)
library(Rmisc)
# https://www.rdocumentation.org/packages/Rmisc/versions/1.5
# http://www.cookbook-r.com/Graphs/Plotting_means_and_error_bars_(ggplot2)/

library(tidyverse)
library(openxlsx)

# ANOVAs <- read_csv("Dataset_ANOVAs_NA.csv")
ANOVAs <- read_csv("Dataset_ANOVAs_IDs_NA.csv")

ANOVAs_SUM <- summarySE(ANOVAs, measurevar="11", groupvars=c("rs2208870","EDAT_RESSO","Phenotype"))

ggplot(ANOVAs_SUM, aes(x=rs2208870, y=11, colour=Phenotype)) + 
  geom_errorbar(aes(ymin=11-se, ymax=11+se), width=.1) +
  geom_line() +
  geom_point()


###########################################################################################
#################################### TREND LINES ##########################################
###########################################################################################
#################################  ALL INDIVIDUALS  #######################################

selection <- linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.01,][linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.01,]$TEST == "ADDxCOV8",]

