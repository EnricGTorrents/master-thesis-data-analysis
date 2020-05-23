
library(emmeans)

Dataset_ANOVAs_NA <- read_csv("Dataset_ANOVAs_NA.csv")

###########################################################################################
#################################### TREND LINES ##########################################
###########################################################################################
#################################  ALL INDIVIDUALS  #######################################

selection <- linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.01,][linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.01,]$TEST == "ADDxCOV8",]

