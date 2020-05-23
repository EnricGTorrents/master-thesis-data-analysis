#### HEATMAPS INTERACTIUS

## INTRAGROUP
# Crea dataframe dels affected només amb els tests ADD, DOM i REC

affected_DF <- rbind(linear_affected_DF[linear_affected_DF$TEST == "ADD",], linear_affected_dominant_DF[linear_affected_dominant_DF$TEST == "DOM",], linear_affected_recessive_DF[linear_affected_recessive_DF$TEST == "REC",])

affected_heatmap <- ggplot(affected_DF, mapping = aes(x = factor(SNP, levels=c("rs2208870", "rs12333117", "rs582186", "rs645649", "rs582262", "rs3763180", "rs10484320", "rs4960155", "rs9379002", "rs9405890", "rs1475157")), y = reorder(factor(ID), desc(factor(ID))), fill = Sig)) +  geom_tile() + facet_grid(factor(Hemisphere, levels=c("Right", "Left", "Total")) ~ TEST, scales = "free") + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 90), axis.text.y = element_text(size = 5)) + ylab("Phenotype") + xlab("SNPs") + scale_fill_manual(values = c("#E7B800", "#2E9FDF", "#FC4E07", "#aaacad")) + labs(fill="Significance level: ") + ggtitle('Heatmap of significant levels per test and SNP, grouped by hemisphere; affected individuals.') + theme(plot.title = element_text(size=11))

affected_heatmap_interactive <- ggplotly(affected_heatmap)
affected_heatmap_interactive <- affected_heatmap_interactive %>% layout(showlegend = FALSE)
affected_heatmap_interactive

# Crea dataframe dels unaffected només amb els tests ADD, DOM i REC

unaffected_DF <- rbind(linear_unaffected_DF[linear_unaffected_DF$TEST == "ADD",], linear_unaffected_dominant_DF[linear_unaffected_dominant_DF$TEST == "DOM",], linear_unaffected_recessive_DF[linear_unaffected_recessive_DF$TEST == "REC",])

unaffected_heatmap <- ggplot(unaffected_DF, mapping = aes(x = factor(SNP, levels=c("rs2208870", "rs12333117", "rs582186", "rs645649", "rs582262", "rs3763180", "rs10484320", "rs4960155", "rs9379002", "rs9405890", "rs1475157")), y = reorder(factor(ID), desc(factor(ID))), fill = Sig)) +  geom_tile() + facet_grid(factor(Hemisphere, levels=c("Right", "Left", "Total")) ~ TEST, scales = "free") + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 90), axis.text.y = element_text(size = 5)) + ylab("Phenotype") + xlab("SNPs") + scale_fill_manual(values = c("#E7B800", "#2E9FDF", "#FC4E07", "#aaacad")) + labs(fill="Significance level: ") + ggtitle('Heatmap of significant levels per test and SNP, grouped by hemisphere; unaffected individuals.') + theme(plot.title = element_text(size=11))

unaffected_heatmap_interactive <- ggplotly(unaffected_heatmap)
unaffected_heatmap_interactive <- unaffected_heatmap_interactive %>% layout(showlegend = FALSE)
unaffected_heatmap_interactive
