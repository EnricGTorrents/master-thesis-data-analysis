#### LIST AND PLOT OF P VALUES < 0.05, BILATERALS?
# linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,]

## BAR PLOT COUNT OF SIGNIFICANT P-VALUES
# Affected sense genotypic

ggplot(linear_affected_DF[linear_affected_DF$P < 0.05,], aes(Hemisphere)) + geom_bar(aes(fill = Sig)) + facet_grid( ~ TEST) + theme_minimal() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Count of significative p-values") + labs(fill="Significance level: ") + theme(plot.title = element_text(size=8)) + ggtitle('Bar plot of significant p-values count grouped by hemisphere and test. Affected individuals.')

ggsave("significant affected.png", dpi = 320)


# Affected dominant

ggplot(linear_affected_dominant_DF[linear_affected_dominant_DF$P < 0.05,], aes(Hemisphere)) + geom_bar(aes(fill = Sig)) + facet_grid( ~ TEST) + theme_minimal() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Count of significative p-values") + labs(fill="Significance level: ") + theme(plot.title = element_text(size=8)) + ggtitle('Bar plot of significant p-values count grouped by hemisphere and test. Affected individuals, dominant.')

ggsave("significant affected dominant.png", dpi = 320)

# Affected recessive

ggplot(linear_affected_recessive_DF[linear_affected_recessive_DF$P < 0.05,], aes(Hemisphere)) + geom_bar(aes(fill = Sig)) + facet_grid( ~ TEST) + theme_minimal() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Count of significative p-values") + labs(fill="Significance level: ") + theme(plot.title = element_text(size=8)) + ggtitle('Bar plot of significant p-values count grouped by hemisphere and test. Affected individuals, recessive.')

ggsave("significant affected recessive.png", dpi = 320)

# Unaffected sense genotypic

ggplot(linear_unaffected_DF[linear_unaffected_DF$P < 0.05,], aes(Hemisphere)) + geom_bar(aes(fill = Sig)) + facet_grid( ~ TEST) + theme_minimal() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Count of significative p-values") + labs(fill="Significance level: ") + theme(plot.title = element_text(size=8)) + ggtitle('Bar plot of significant p-values count grouped by hemisphere and test. Unaffected individuals.')


ggsave("significant unaffected.png", dpi = 320)

# Unaffected dominant

ggplot(linear_unaffected_dominant_DF[linear_unaffected_dominant_DF$P < 0.05,], aes(Hemisphere)) + geom_bar(aes(fill = Sig)) + facet_grid( ~ TEST) + theme_minimal() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Count of significative p-values") + labs(fill="Significance level: ") + theme(plot.title = element_text(size=8)) + ggtitle('Bar plot of significant p-values count grouped by hemisphere and test. Unaffected individuals, dominant.')

ggsave("significant unaffected dominant.png", dpi = 320)

# Unaffected recessive

ggplot(linear_unaffected_recessive_DF[linear_unaffected_recessive_DF$P < 0.05,], aes(Hemisphere)) + geom_bar(aes(fill = Sig)) + facet_grid( ~ TEST) + theme_minimal() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Count of significative p-values") + labs(fill="Significance level: ") + theme(plot.title = element_text(size=8)) + ggtitle('Bar plot of significant p-values count grouped by hemisphere and test. Unaffected individuals, recessive.')

ggsave("significant unaffected recessive.png", dpi = 320)

# All individuals
ggplot(linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,], aes(Hemisphere)) + geom_bar(aes(fill = Sig)) + facet_grid( ~ TEST) + theme_minimal() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 90), axis.text.y = element_text(size = 6)) + ylab("Count of significative p-values") + labs(fill="Significance level: ") + theme(plot.title = element_text(size=8)) + ggtitle('Bar plot of significant p-values count grouped by hemisphere and test. All individuals.')

ggsave("significant all individuals.png", dpi = 320)

# All individuals, only ADDxCOV8
# ggplot(linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,][linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,]$TEST == "ADDxCOV8",], aes(Hemisphere)) + geom_bar(aes(fill = Sig)) + facet_grid( ~ TEST) + theme_minimal() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 0), axis.text.y = element_text(size = 6)) + ylab("Count of significative p-values") + labs(fill="Significance level: ")


# All individuals, only ADDxCOV8. Grouped by hemisphere and SNP
ggplot(linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,][linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,]$TEST == "ADDxCOV8",], aes(Hemisphere)) + geom_bar(aes(fill = Sig)) + facet_grid( ~ SNP) + theme_minimal() + theme(legend.key.size = unit(0.5,"line"), legend.title = element_text(color = "black", size = 8, face="bold"), legend.text = element_text(color = "black", size = 8), legend.position="bottom", axis.text.x = element_text(size = 6, angle = 0), axis.text.y = element_text(size = 6)) + ylab("Count of significative p-values") + labs(fill="Significance level: ") + theme(plot.title = element_text(size=8)) + ggtitle('Bar plot of significant p-values count grouped by hemisphere and SNP. All individuals, ADDxCOV8.')

ggsave("significant all individuals ADDxCOV8.png", dpi = 320)


# Summary statistics
# summary(linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,][linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,]$TEST == "ADDxCOV8",])

# tapply(linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,][linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,]$TEST == "ADDxCOV8",]$P, linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,][linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,]$TEST == "ADDxCOV8",]$Hemisphere, summary)

# tapply(linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,][linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,]$TEST == "ADDxCOV8",]$Sig, linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,][linear_ALL_interaction_DF[linear_ALL_interaction_DF$P < 0.05,]$TEST == "ADDxCOV8",]$Hemisphere, count)

# tapply(linear_ALL_interaction_DF[linear_ALL_interaction_DF$TEST == "ADDxCOV8",]$Sig, linear_ALL_interaction_DF[linear_ALL_interaction_DF$TEST == "ADDxCOV8",]$Hemisphere, summary)

system("mkdir PNGs")
system("mv *.png PNGs")