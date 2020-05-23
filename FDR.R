# Realitza els anàlisis de False Discovery Rate (FDR)

library(FSA)

## FDR DEL TEST ADDxCOV8 (BENJAMINI-HOCHBERG PROCEDURE AND OTHERS)
#  LLISTA DE P VALORS DEL TEST ADDxCOV8
FDR <- linear_ALL_interaction_DF[linear_ALL_interaction_DF$TEST == "ADDxCOV8",]

# ORDER P VALUES
FDR = FDR[order(FDR$P),]
# PERFORM FDR 
# https://rcompanion.org/rcompanion/f_01.html
FDR$Bonferroni = p.adjust(FDR$P, method = "bonferroni")
FDR$BH = p.adjust(FDR$P, method = "BH")
FDR$Holm = p.adjust(FDR$P, method = "holm")
FDR$Hochberg = p.adjust(FDR$P, method = "hochberg")
FDR$Hommel = p.adjust(FDR$P, method = "hommel")
FDR$BY = p.adjust(FDR$P, method = "BY")

# Left Hemishphere FDR
FDR_Left <- FDR[FDR$Hemisphere == "Left",]
FDR_Left = FDR_Left[order(FDR_Left$P),]
FDR_Left$BH = p.adjust(FDR_Left$P, method = "BH")

# Right Hemishphere FDR
FDR_Right <- FDR[FDR$Hemisphere == "Right",]
FDR_Right = FDR_Right[order(FDR_Right$P),]
FDR_Right$BH = p.adjust(FDR_Right$P, method = "BH")

# Total Hemishphere FDR
FDR_Total <- FDR[FDR$Hemisphere == "Total",]
FDR_Total = FDR_Total[order(FDR_Total$P),]
FDR_Total$BH = p.adjust(FDR_Total$P, method = "BH")

# PLOT WITH GGPLOT
FDR_GATHER <- FDR %>% select(P, BH, Bonferroni, Holm, Hochberg, Hommel, BY) %>% gather(key = "Method", value = "value", -P)

FDR_Plot_All_Individuals <- ggplot(FDR_GATHER, aes(x = P, y = value, colour = Method)) + geom_line() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Adjusted P-value") + xlab("P-value") + theme_minimal() + ggtitle('False Discovery Rate Tests; all individuals ADDxCOV8 test') + theme(plot.title = element_text(size=11)) + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 0), axis.text.y = element_text(size = 5))

# SAVE FDR CSV
write.csv(FDR,"FDR.csv", row.names = FALSE)

# PLOT THE ADDxCOV8 P VALUES IN HEATMAP
# ggplot(FDR, mapping = aes(x = SNP, y = factor(ID), fill = Sig)) +  geom_tile() + facet_grid(Hemisphere ~ TEST, scales = "free") + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Phenotype") + scale_fill_manual(values = c("#E7B800", "#2E9FDF", "#FC4E07", "#aaacad")) + labs(fill="Significance level: ")


###########################################################################################
#################################### INTRAGROUP ###########################################
###########################################################################################
####################################  AFFECTED  ###########################################

##### ADD
FDR_affected <- affected_DF[affected_DF$TEST == "ADD",]
FDR_affected = FDR_affected[order(FDR_affected$P),]
FDR_affected$Bonferroni = p.adjust(FDR_affected$P, method = "bonferroni")
FDR_affected$BH = p.adjust(FDR_affected$P, method = "BH")
FDR_affected$Holm = p.adjust(FDR_affected$P, method = "holm")
FDR_affected$Hochberg = p.adjust(FDR_affected$P, method = "hochberg")
FDR_affected$Hommel = p.adjust(FDR_affected$P, method = "hommel")
FDR_affected$BY = p.adjust(FDR_affected$P, method = "BY")

# Left Hemishphere FDR
FDR_affected_Left <- FDR_affected[FDR_affected$Hemisphere == "Left",]
FDR_affected_Left = FDR_affected_Left[order(FDR_affected_Left$P),]
FDR_affected_Left$BH = p.adjust(FDR_affected_Left$P, method = "BH")

# Right Hemishphere FDR
FDR_affected_Right <- FDR_affected[FDR_affected$Hemisphere == "Right",]
FDR_affected_Right = FDR_affected_Right[order(FDR_affected_Right$P),]
FDR_affected_Right$BH = p.adjust(FDR_affected_Right$P, method = "BH")

# Total Hemishphere FDR
FDR_affected_Total <- FDR_affected[FDR_affected$Hemisphere == "Total",]
FDR_affected_Total = FDR_affected_Total[order(FDR_affected_Total$P),]
FDR_affected_Total$BH = p.adjust(FDR_affected_Total$P, method = "BH")

# PLOT WITH GGPLOT
FDR_GATHER_affected <- FDR_affected %>% select(P, BH, Bonferroni, Holm, Hochberg, Hommel, BY) %>% gather(key = "Method", value = "value", -P)

FDR_Plot_affected_Individuals <- ggplot(FDR_GATHER_affected, aes(x = P, y = value, colour = Method)) + geom_line() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Adjusted P-value") + xlab("P-value") + theme_minimal() + ggtitle('False Discovery Rate Tests; affected individuals ADD test') + theme(plot.title = element_text(size=11)) + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 0), axis.text.y = element_text(size = 5))

# SAVE FDR CSV
write.csv(FDR_affected,"FDR_affected.csv", row.names = FALSE)

#### DOMINANT

FDR_affected_DOM <- affected_DF[affected_DF$TEST == "DOM",]
FDR_affected_DOM = FDR_affected_DOM[order(FDR_affected_DOM$P),]
FDR_affected_DOM$Bonferroni = p.adjust(FDR_affected_DOM$P, method = "bonferroni")
FDR_affected_DOM$BH = p.adjust(FDR_affected_DOM$P, method = "BH")
FDR_affected_DOM$Holm = p.adjust(FDR_affected_DOM$P, method = "holm")
FDR_affected_DOM$Hochberg = p.adjust(FDR_affected_DOM$P, method = "hochberg")
FDR_affected_DOM$Hommel = p.adjust(FDR_affected_DOM$P, method = "hommel")
FDR_affected_DOM$BY = p.adjust(FDR_affected_DOM$P, method = "BY")

# Left Hemishphere FDR
FDR_affected_DOM_Left <- FDR_affected_DOM[FDR_affected_DOM$Hemisphere == "Left",]
FDR_affected_DOM_Left = FDR_affected_DOM_Left[order(FDR_affected_DOM_Left$P),]
FDR_affected_DOM_Left$BH = p.adjust(FDR_affected_DOM_Left$P, method = "BH")

# Right Hemishphere FDR
FDR_affected_DOM_Right <- FDR_affected_DOM[FDR_affected_DOM$Hemisphere == "Right",]
FDR_affected_DOM_Right = FDR_affected_DOM_Right[order(FDR_affected_DOM_Right$P),]
FDR_affected_DOM_Right$BH = p.adjust(FDR_affected_DOM_Right$P, method = "BH")

# Total Hemishphere FDR
FDR_affected_DOM_Total <- FDR_affected_DOM[FDR_affected_DOM$Hemisphere == "Total",]
FDR_affected_DOM_Total = FDR_affected_DOM_Total[order(FDR_affected_DOM_Total$P),]
FDR_affected_DOM_Total$BH = p.adjust(FDR_affected_DOM_Total$P, method = "BH")

# PLOT WITH GGPLOT
FDR_GATHER_affected_DOM <- FDR_affected_DOM %>% select(P, BH, Bonferroni, Holm, Hochberg, Hommel, BY) %>% gather(key = "Method", value = "value", -P)

FDR_Plot_affected_Individuals_DOM <- ggplot(FDR_GATHER_affected_DOM, aes(x = P, y = value, colour = Method)) + geom_line() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Adjusted P-value") + xlab("P-value") + theme_minimal() + ggtitle('False Discovery Rate Tests; affected individuals DOM test') + theme(plot.title = element_text(size=11)) + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 0), axis.text.y = element_text(size = 5))

# SAVE FDR CSV
write.csv(FDR_affected_DOM,"FDR_affected_DOM.csv", row.names = FALSE)

#### RECESSIVE

FDR_affected_REC <- affected_DF[affected_DF$TEST == "REC",]
FDR_affected_REC = FDR_affected_REC[order(FDR_affected_REC$P),]
FDR_affected_REC$Bonferroni = p.adjust(FDR_affected_REC$P, method = "bonferroni")
FDR_affected_REC$BH = p.adjust(FDR_affected_REC$P, method = "BH")
FDR_affected_REC$Holm = p.adjust(FDR_affected_REC$P, method = "holm")
FDR_affected_REC$Hochberg = p.adjust(FDR_affected_REC$P, method = "hochberg")
FDR_affected_REC$Hommel = p.adjust(FDR_affected_REC$P, method = "hommel")
FDR_affected_REC$BY = p.adjust(FDR_affected_REC$P, method = "BY")

# Left Hemishphere FDR
FDR_affected_REC_Left <- FDR_affected_REC[FDR_affected_REC$Hemisphere == "Left",]
FDR_affected_REC_Left = FDR_affected_REC_Left[order(FDR_affected_REC_Left$P),]
FDR_affected_REC_Left$BH = p.adjust(FDR_affected_REC_Left$P, method = "BH")

# Right Hemishphere FDR
FDR_affected_REC_Right <- FDR_affected_REC[FDR_affected_REC$Hemisphere == "Right",]
FDR_affected_REC_Right = FDR_affected_REC_Right[order(FDR_affected_REC_Right$P),]
FDR_affected_REC_Right$BH = p.adjust(FDR_affected_REC_Right$P, method = "BH")

# Total Hemishphere FDR
FDR_affected_REC_Total <- FDR_affected_REC[FDR_affected_REC$Hemisphere == "Total",]
FDR_affected_REC_Total = FDR_affected_REC_Total[order(FDR_affected_REC_Total$P),]
FDR_affected_REC_Total$BH = p.adjust(FDR_affected_REC_Total$P, method = "BH")

# PLOT WITH GGPLOT
FDR_GATHER_affected_REC <- FDR_affected_REC %>% select(P, BH, Bonferroni, Holm, Hochberg, Hommel, BY) %>% gather(key = "Method", value = "value", -P)

FDR_Plot_affected_Individuals_REC <- ggplot(FDR_GATHER_affected_REC, aes(x = P, y = value, colour = Method)) + geom_line() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Adjusted P-value") + xlab("P-value") + theme_minimal() + ggtitle('False Discovery Rate Tests; affected individuals REC test') + theme(plot.title = element_text(size=11)) + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 0), axis.text.y = element_text(size = 5))

# SAVE FDR CSV
write.csv(FDR_affected_REC,"FDR_affected_REC.csv", row.names = FALSE)

#################################### UNAFFECTED ###########################################

##### ADD
FDR_unaffected <- unaffected_DF[unaffected_DF$TEST == "ADD",]
FDR_unaffected = FDR_unaffected[order(FDR_unaffected$P),]
FDR_unaffected$Bonferroni = p.adjust(FDR_unaffected$P, method = "bonferroni")
FDR_unaffected$BH = p.adjust(FDR_unaffected$P, method = "BH")
FDR_unaffected$Holm = p.adjust(FDR_unaffected$P, method = "holm")
FDR_unaffected$Hochberg = p.adjust(FDR_unaffected$P, method = "hochberg")
FDR_unaffected$Hommel = p.adjust(FDR_unaffected$P, method = "hommel")
FDR_unaffected$BY = p.adjust(FDR_unaffected$P, method = "BY")

# Left Hemishphere FDR
FDR_unaffected_Left <- FDR_unaffected[FDR_unaffected$Hemisphere == "Left",]
FDR_unaffected_Left = FDR_unaffected_Left[order(FDR_unaffected_Left$P),]
FDR_unaffected_Left$BH = p.adjust(FDR_unaffected_Left$P, method = "BH")

# Right Hemishphere FDR
FDR_unaffected_Right <- FDR_unaffected[FDR_unaffected$Hemisphere == "Right",]
FDR_unaffected_Right = FDR_unaffected_Right[order(FDR_unaffected_Right$P),]
FDR_unaffected_Right$BH = p.adjust(FDR_unaffected_Right$P, method = "BH")

# Total Hemishphere FDR
FDR_unaffected_Total <- FDR_unaffected[FDR_unaffected$Hemisphere == "Total",]
FDR_unaffected_Total = FDR_unaffected_Total[order(FDR_unaffected_Total$P),]
FDR_unaffected_Total$BH = p.adjust(FDR_unaffected_Total$P, method = "BH")

# PLOT WITH GGPLOT
FDR_GATHER_unaffected <- FDR_unaffected %>% select(P, BH, Bonferroni, Holm, Hochberg, Hommel, BY) %>% gather(key = "Method", value = "value", -P)

FDR_Plot_unaffected_Individuals <- ggplot(FDR_GATHER_unaffected, aes(x = P, y = value, colour = Method)) + geom_line() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Adjusted P-value") + xlab("P-value") + theme_minimal() + ggtitle('False Discovery Rate Tests; unaffected individuals ADD test') + theme(plot.title = element_text(size=11)) + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 0), axis.text.y = element_text(size = 5))

# SAVE FDR CSV
write.csv(FDR_unaffected,"FDR_unaffected.csv", row.names = FALSE)

#### DOMINANT

FDR_unaffected_DOM <- unaffected_DF[unaffected_DF$TEST == "DOM",]
FDR_unaffected_DOM = FDR_unaffected_DOM[order(FDR_unaffected_DOM$P),]
FDR_unaffected_DOM$Bonferroni = p.adjust(FDR_unaffected_DOM$P, method = "bonferroni")
FDR_unaffected_DOM$BH = p.adjust(FDR_unaffected_DOM$P, method = "BH")
FDR_unaffected_DOM$Holm = p.adjust(FDR_unaffected_DOM$P, method = "holm")
FDR_unaffected_DOM$Hochberg = p.adjust(FDR_unaffected_DOM$P, method = "hochberg")
FDR_unaffected_DOM$Hommel = p.adjust(FDR_unaffected_DOM$P, method = "hommel")
FDR_unaffected_DOM$BY = p.adjust(FDR_unaffected_DOM$P, method = "BY")

# Left Hemishphere FDR
FDR_unaffected_DOM_Left <- FDR_unaffected_DOM[FDR_unaffected_DOM$Hemisphere == "Left",]
FDR_unaffected_DOM_Left = FDR_unaffected_DOM_Left[order(FDR_unaffected_DOM_Left$P),]
FDR_unaffected_DOM_Left$BH = p.adjust(FDR_unaffected_DOM_Left$P, method = "BH")

# Right Hemishphere FDR
FDR_unaffected_DOM_Right <- FDR_unaffected_DOM[FDR_unaffected_DOM$Hemisphere == "Right",]
FDR_unaffected_DOM_Right = FDR_unaffected_DOM_Right[order(FDR_unaffected_DOM_Right$P),]
FDR_unaffected_DOM_Right$BH = p.adjust(FDR_unaffected_DOM_Right$P, method = "BH")

# Total Hemishphere FDR
FDR_unaffected_DOM_Total <- FDR_unaffected_DOM[FDR_unaffected_DOM$Hemisphere == "Total",]
FDR_unaffected_DOM_Total = FDR_unaffected_DOM_Total[order(FDR_unaffected_DOM_Total$P),]
FDR_unaffected_DOM_Total$BH = p.adjust(FDR_unaffected_DOM_Total$P, method = "BH")

# PLOT WITH GGPLOT
FDR_GATHER_unaffected_DOM <- FDR_unaffected_DOM %>% select(P, BH, Bonferroni, Holm, Hochberg, Hommel, BY) %>% gather(key = "Method", value = "value", -P)

FDR_Plot_unaffected_Individuals_DOM <-ggplot(FDR_GATHER_unaffected_DOM, aes(x = P, y = value, colour = Method)) + geom_line() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Adjusted P-value") + xlab("P-value") + theme_minimal() + ggtitle('False Discovery Rate Tests; unaffected individuals DOM test') + theme(plot.title = element_text(size=11)) + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 0), axis.text.y = element_text(size = 5))

# SAVE FDR CSV
write.csv(FDR_unaffected_DOM,"FDR_unaffected_DOM.csv", row.names = FALSE)

#### RECESSIVE

FDR_unaffected_REC <- unaffected_DF[unaffected_DF$TEST == "REC",]
FDR_unaffected_REC = FDR_unaffected_REC[order(FDR_unaffected_REC$P),]
FDR_unaffected_REC$Bonferroni = p.adjust(FDR_unaffected_REC$P, method = "bonferroni")
FDR_unaffected_REC$BH = p.adjust(FDR_unaffected_REC$P, method = "BH")
FDR_unaffected_REC$Holm = p.adjust(FDR_unaffected_REC$P, method = "holm")
FDR_unaffected_REC$Hochberg = p.adjust(FDR_unaffected_REC$P, method = "hochberg")
FDR_unaffected_REC$Hommel = p.adjust(FDR_unaffected_REC$P, method = "hommel")
FDR_unaffected_REC$BY = p.adjust(FDR_unaffected_REC$P, method = "BY")

# Left Hemishphere FDR
FDR_unaffected_REC_Left <- FDR_unaffected_REC[FDR_unaffected_REC$Hemisphere == "Left",]
FDR_unaffected_REC_Left = FDR_unaffected_REC_Left[order(FDR_unaffected_REC_Left$P),]
FDR_unaffected_REC_Left$BH = p.adjust(FDR_unaffected_REC_Left$P, method = "BH")

# Right Hemishphere FDR
FDR_unaffected_REC_Right <- FDR_unaffected_REC[FDR_unaffected_REC$Hemisphere == "Right",]
FDR_unaffected_REC_Right = FDR_unaffected_REC_Right[order(FDR_unaffected_REC_Right$P),]
FDR_unaffected_REC_Right$BH = p.adjust(FDR_unaffected_REC_Right$P, method = "BH")

# Total Hemishphere FDR
FDR_unaffected_REC_Total <- FDR_unaffected_REC[FDR_unaffected_REC$Hemisphere == "Total",]
FDR_unaffected_REC_Total = FDR_unaffected_REC_Total[order(FDR_unaffected_REC_Total$P),]
FDR_unaffected_REC_Total$BH = p.adjust(FDR_unaffected_REC_Total$P, method = "BH")

# PLOT WITH GGPLOT
FDR_GATHER_unaffected_REC <- FDR_unaffected_REC %>% select(P, BH, Bonferroni, Holm, Hochberg, Hommel, BY) %>% gather(key = "Method", value = "value", -P)

FDR_Plot_unaffected_Individuals_REC <-ggplot(FDR_GATHER_unaffected_REC, aes(x = P, y = value, colour = Method)) + geom_line() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Adjusted P-value") + xlab("P-value") + theme_minimal() + ggtitle('False Discovery Rate Tests; unaffected individuals REC test') + theme(plot.title = element_text(size=11)) + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 0), axis.text.y = element_text(size = 5))

# SAVE FDR CSV
write.csv(FDR_unaffected_REC,"FDR_unaffected_REC.csv", row.names = FALSE)
