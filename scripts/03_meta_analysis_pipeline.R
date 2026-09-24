# 03_meta_analysis_pipeline.R
# Executing Statistical Synthesis and Multi-Panel Visualization

library(tidyverse)

message("Executing multi-platform microbial diversity reanalysis...")

# Ensure output directory exists
if (!dir.exists("outputs")) {
  dir.create("outputs", recursive = TRUE)
}

# 1. Load standardized datasets
mbra <- read.csv("raw_data/mbra_harmonized.csv")
shime <- read.csv("raw_data/shime_harmonized.csv")

# 2. Combine into Master Data Frame
master_meta <- rbind(mbra, shime)

# 3. Calculate Shannon Diversity (H') across primary phyla
phyla_cols <- c("Bacteroidetes", "Firmicutes", "Actinobacteria", "Proteobacteria")
master_meta$Shannon_H <- apply(master_meta[, phyla_cols], 1, function(x) {
  p <- x / sum(x)
  p <- p[p > 0] # Exclude zero entries
  return(-sum(p * log(p)))
})

# 4. Save combined statistical matrix
write.csv(master_meta, "outputs/master_meta_analysis_metrics.csv", row.names = FALSE)
message("Calculated Shannon Entropy. Metrics exported to outputs/ folder.")

# 5. Non-Parametric Evaluation
message("\n--- JOURNAL STATISTICAL EVALUATION ---")
stabilized_only <- master_meta %>% filter(Timepoint == "Ex_Vivo_Stabilized")
platform_comparison <- wilcox.test(Shannon_H ~ Platform_Type, data = stabilized_only, exact = FALSE)
print(platform_comparison)

# 6. Generate Multi-Panel Figure 1
meta_plot <- ggplot(master_meta, aes(x = Timepoint, y = Shannon_H, fill = Timepoint)) +
  geom_boxplot(outlier.shape = NA, alpha = 0.7, width = 0.5) +
  geom_jitter(width = 0.15, size = 2, shape = 21, color = "black", alpha = 0.8) +
  facet_wrap(~Platform_Type) +
  scale_fill_manual(values = c("In_Vivo_Baseline" = "#2ecc71", "Ex_Vivo_Stabilized" = "#e74c3c")) +
  labs(
    title = "Comparative Alpha Diversity Decay Across Ex Vivo Platforms",
    subtitle = "Comparative Evaluation: Mini-Chemostat Arrays vs. Multi-Stage SHIME Systems",
    x = "Experimental Evaluation Window",
    y = "Community Shannon Entropy (H')",
    caption = "Data Source: Harmonized Continuous Culture Archive (2026)"
  ) +
  theme_bw(base_size = 13) +
  theme(
    legend.position = "none",
    strip.background = element_rect(fill = "#f8f9fa", color = "black"),
    strip.text = element_text(face = "bold", color = "#2c3e50"),
    plot.title = element_text(face = "bold", size = 14),
    panel.grid.minor = element_blank()
  )

# 7. Export high-resolution panel
ggsave("outputs/Figure1_Meta_Diversity_Panel.png", plot = meta_plot, width = 8.5, height = 5, dpi = 300)
message("\nSuccess! High-resolution Figure1_Meta_Diversity_Panel.png saved to outputs/ folder.")
