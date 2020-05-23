
#### Genera heatmaps amb els SNPs ordenats

### Soluciona el problema de la consistència dels colors
### Create a custom color scale
library(RColorBrewer)

myColors <- brewer.pal(5,"Set1")
names(myColors) <- levels(affected_DF$Sig)
# + scale_colour_manual(name = "Sig", values = myColors)
# + scale_fill_manual(name = "Sig", values = myColors)

## Affected

# Sense genotypic

ggplot(linear_affected_DF, mapping = aes(x = factor(SNP, levels=c("rs2208870", "rs12333117", "rs582186", "rs645649", "rs582262", "rs3763180", "rs10484320", "rs4960155", "rs9379002", "rs9405890", "rs1475157")), y = reorder(factor(ID), desc(factor(ID))), fill = Sig)) +  geom_tile() + facet_grid(factor(Hemisphere, levels=c("Right", "Left", "Total")) ~ TEST, scales = "free") + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 90), axis.text.y = element_text(size = 5)) + ylab("Phenotype") + xlab("SNPs") + scale_fill_manual(values = c("#E7B800", "#2E9FDF", "#FC4E07", "#aaacad")) + labs(fill="Significance level: ") + ggtitle('Heatmap of significant levels per test and SNP, grouped by hemisphere; affected individuals.') + theme(plot.title = element_text(size=11))

ggsave("heatmap affected.png", dpi = 320)

# Dominant

ggplot(linear_affected_dominant_DF, mapping = aes(x = factor(SNP, levels=c("rs2208870", "rs12333117", "rs582186", "rs645649", "rs582262", "rs3763180", "rs10484320", "rs4960155", "rs9379002", "rs9405890", "rs1475157")), y = reorder(factor(ID), desc(factor(ID))), fill = Sig)) +  geom_tile() + facet_grid(factor(Hemisphere, levels=c("Right", "Left", "Total")) ~ TEST, scales = "free") + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 90), axis.text.y = element_text(size = 5)) + ylab("Phenotype") + xlab("SNPs") + scale_fill_manual(values = c("#E7B800", "#2E9FDF", "#FC4E07", "#aaacad")) + labs(fill="Significance level: ") + ggtitle('Heatmap of significant levels per test and SNP, grouped by hemisphere; affected individuals, dominant.') + theme(plot.title = element_text(size=11))

ggsave("heatmap affected dominant.png", dpi = 320)

# Recessive

ggplot(linear_affected_recessive_DF, mapping = aes(x = factor(SNP, levels=c("rs2208870", "rs12333117", "rs582186", "rs645649", "rs582262", "rs3763180", "rs10484320", "rs4960155", "rs9379002", "rs9405890", "rs1475157")), y = reorder(factor(ID), desc(factor(ID))), fill = Sig)) +  geom_tile() + facet_grid(factor(Hemisphere, levels=c("Right", "Left", "Total")) ~ TEST, scales = "free") + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 90), axis.text.y = element_text(size = 5)) + ylab("Phenotype") + xlab("SNPs") + scale_fill_manual(values = c("#E7B800", "#2E9FDF", "#FC4E07", "#aaacad")) + labs(fill="Significance level: ") + ggtitle('Heatmap of significant levels per test and SNP, grouped by hemisphere; affected individuals, recessive.') + theme(plot.title = element_text(size=11))

ggsave("heatmap affected recessive.png", dpi = 320)


## Unaffected
# Sense genotypic

ggplot(linear_unaffected_DF, mapping = aes(x = factor(SNP, levels=c("rs2208870", "rs12333117", "rs582186", "rs645649", "rs582262", "rs3763180", "rs10484320", "rs4960155", "rs9379002", "rs9405890", "rs1475157")), y = reorder(factor(ID), desc(factor(ID))), fill = Sig)) +  geom_tile() + facet_grid(factor(Hemisphere, levels=c("Right", "Left", "Total")) ~ TEST, scales = "free") + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 90), axis.text.y = element_text(size = 5)) + ylab("Phenotype") + xlab("SNPs") + scale_fill_manual(values = c("#E7B800", "#2E9FDF", "#FC4E07", "#aaacad")) + labs(fill="Significance level: ") + ggtitle('Heatmap of significant levels per test and SNP, grouped by hemisphere; unaffected individuals.') + theme(plot.title = element_text(size=11))

ggsave("heatmap unaffected.png", dpi = 320)


# Dominant

ggplot(linear_unaffected_dominant_DF, mapping = aes(x = factor(SNP, levels=c("rs2208870", "rs12333117", "rs582186", "rs645649", "rs582262", "rs3763180", "rs10484320", "rs4960155", "rs9379002", "rs9405890", "rs1475157")), y = reorder(factor(ID), desc(factor(ID))), fill = Sig)) +  geom_tile() + facet_grid(factor(Hemisphere, levels=c("Right", "Left", "Total")) ~ TEST, scales = "free") + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 90), axis.text.y = element_text(size = 5)) + ylab("Phenotype") + xlab("SNPs") + scale_fill_manual(values = c("#E7B800", "#2E9FDF", "#FC4E07", "#aaacad")) + labs(fill="Significance level: ") + ggtitle('Heatmap of significant levels per test and SNP, grouped by hemisphere; unaffected individuals, dominant.') + theme(plot.title = element_text(size=11))

ggsave("heatmap unaffected dominant.png", dpi = 320)

# Recessive

ggplot(linear_unaffected_recessive_DF, mapping = aes(x = factor(SNP, levels=c("rs2208870", "rs12333117", "rs582186", "rs645649", "rs582262", "rs3763180", "rs10484320", "rs4960155", "rs9379002", "rs9405890", "rs1475157")), y = reorder(factor(ID), desc(factor(ID))), fill = Sig)) +  geom_tile() + facet_grid(factor(Hemisphere, levels=c("Right", "Left", "Total")) ~ TEST, scales = "free") + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 90), axis.text.y = element_text(size = 5)) + ylab("Phenotype") + xlab("SNPs") + scale_fill_manual(values = c("#E7B800", "#2E9FDF", "#FC4E07", "#aaacad")) + labs(fill="Significance level: ") + ggtitle('Heatmap of significant levels per test and SNP, grouped by hemisphere; unaffected individuals, recessive.') + theme(plot.title = element_text(size=11))

ggsave("heatmap unaffected recessive.png", dpi = 320)

## Tots els individus


ggplot(linear_ALL_interaction_DF, mapping = aes(x = factor(SNP, levels=c("rs2208870", "rs12333117", "rs582186", "rs645649", "rs582262", "rs3763180", "rs10484320", "rs4960155", "rs9379002", "rs9405890", "rs1475157")), y = reorder(factor(ID), desc(factor(ID))), fill = Sig)) +  geom_tile() + facet_grid(factor(Hemisphere, levels=c("Right", "Left", "Total")) ~ TEST, scales = "free") + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 7, angle = 90), axis.text.y = element_text(size = 5)) + ylab("Phenotype") + xlab("SNPs") + scale_fill_manual(values = c("#E7B800", "#2E9FDF", "#FC4E07", "#aaacad")) + labs(fill="Significance level: ") + ggtitle('Heatmap of significant levels per test and SNP, grouped by hemisphere; all individuals.') + theme(plot.title = element_text(size=11))

ggsave("heatmap all interaction.png", dpi = 320)


system("mkdir PNGs")
system("mv *.png PNGs")