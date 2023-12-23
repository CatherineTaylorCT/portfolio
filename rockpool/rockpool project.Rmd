---
title: "rockpool data"
author: "Catherine Taylor"
date: "2023-10-20"
output: html_document
---

## R Markdown
### Rockpool data analysis (Ababneh, S., Moreau, Z. (2023). A Beginner's Guide To Sampling Rockpools. Environmental Field Methods, QUBES Educational Resources. doi:10.25334/PWG7-8822)
#### Introduction- Rockpools offer a glimpse into ecological differences on a miniature scale. Smaller rocks caught in larger ones create these unique formations, like the James rockpools, eroded by water over millions of years. Each pool presents abiotic and biotic elements, making it a microcosm of larger ecosystems. The investigation at the James Rockpools aims to explore these interactions and the relationship between biodiversity and the rockpools' physical traits, like elevation, tidal flows, and nutrient availability. We hypothesize that each rockpool's shape influences species richness.

```{R}
install.packages("readr")
library("readr")
read_csv("data.csv")
```
```{R}
install.packages("ggplot2")
library(ggplot2)
install.packages("psych")
library(psych)
```
```{R}
describe(data)
```

```{R}
ggplot(data, aes(x = `V5`, y = `V77`)) +
  geom_point() +
  labs(title = "Species Richness vs Pool Volume",
       x = "Pool Volume (cm3)",
       y = "Species Richness") +
  theme_minimal()

```
# This scatterplot shows the connection between pool volume and species richness. Each black dot represents a pool's volume and the corresponding species richness. The X-axis displays the volume of each pool while the Y-axis represents species richness.

```{R}
# Convert to numeric and replace non-numeric characters with NA
data$V5 <- as.numeric(gsub("[^0-9.]", "", data$V5))
data$V77 <- as.numeric(gsub("[^0-9.]", "", data$V77))
data$V7 <- as.numeric(gsub("[^0-9.]", "", data$V7))
data$V6 <- as.numeric(gsub("[^0-9.]", "", data$V6))
# Check for NA values after conversion
sum(is.na(data$V5))
sum(is.na(data$V77))
sum(is.na(data$V7))
sum(is.na(data$V6))

# Remove rows with NA if they are few
cleaned_data <- na.omit(data)
# Rename columns
names(cleaned_data)[names(cleaned_data) == "V5"] <- "Average Pool Volume (Cm3)"
names(cleaned_data)[names(cleaned_data) == "V77"] <- "Species Richness"
names(cleaned_data)[names(cleaned_data) == "V7"] <- "Percentage Canopy Cover"
names(cleaned_data)[names(cleaned_data) == "V6"] <- "Vegetation Cover"

```



```{R}
# Fit the linear model
lm_model <- lm(`Species Richness` ~ `Average Pool Volume (Cm3)`, data = cleaned_data)

# Extract R-squared value
r_squared <- summary(lm_model)$r.squared

# Create the ggplot
ggplot(cleaned_data, aes(x = `Average Pool Volume (Cm3)`, y = `Species Richness`)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  annotate("text", x = 10, y = 5, label = sprintf("R² = %.2f", r_squared), hjust = 0, vjust = 0) +
  labs(title = "Species Richness vs Pool Volume",
       x = "Pool Volume (cm3)",
       y = "Species Richness") +
  theme_minimal()
```
# This scatterplot shows the connection between pool volume and species richness. Each black dot represents a pool's volume and the corresponding species richness. The X-axis displays the volume of each pool while the Y-axis represents species richness. The blue line of best fit suggests a slight decrease in species richness as pool volume increases. The R² value of 0.01 suggests other factors not accounted for in the graph may influence species richness significantly, however a R² value of 0.01 suggests that there is a very weak linear relationship between pool volume and species richness.

```{R}
data$V11 <- as.numeric(gsub("[^0-9.]", "", data$V11))
data <- na.omit(data)
ggplot(data, aes(x = factor(V1), y = V11 - V77)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Species Count by Pool",
       x = "Pool Number",
       y = "Species Count Difference") +
  theme_minimal()
```
# This barplot shows the number of species in each surveyed pool. The light blue bars represent the variance in species count for a specific pool number. The X-axis lists the pool numbers, while the Y-axis reflects the difference in species count compared to a reference value or two different time points. Negative values imply a decrease in species count, while positive values indicate an increase. The chart displays the fluctuations in species count across various pools, with downward bars indicating a lower count and upward bars indicating a higher count. The consistent direction of the bars suggests a uniform pattern across all sampled pools.

```{R}
ggplot(cleaned_data, aes(x = `Percentage Canopy Cover`, y = `Species Richness`)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "Species Richness by Canopy Cover",
       x = "Percentage Canopy Cover",
       y = "Species Richness") +
  theme_minimal()
```
#This graph shows the number of species found based on the percentage of canopy cover. The interquartile range (IQR) of species richness is represented by the green box in the middle. The X-axis categorizes the pools based on their percentage of canopy cover. The Y-axis shows the number of observed species. The median species richness is indicated by the horizontal line across the box. This chart summarizes the distribution and variability of species richness across different canopy cover categories.

```{R}
ggplot(cleaned_data, aes(x = `Average Pool Volume (Cm3)`)) +
  geom_histogram(bins = 10, fill = "orange", color = "black") +
  labs(title = "Distribution of Pool Volumes",
       x = "Pool Volume",
       y = "Frequency") +
  theme_minimal()
```
# This histogram shows the distribution of pool volumes. The orange bars represent various volume ranges, with the height of each bar demonstrating the frequency of pools in that range. The X-axis denotes the measured cubic centimeters (cm³) of each pool, divided into intervals or bins and increasing from left to right. Meanwhile, the Y-axis displays the number of pools within each range, increasing from bottom to top. By examining the histogram, we gain insight into the most common volume ranges and the distribution of pool volumes within the dataset. The width of each bar to a matches a specific volume range, while the height shows the number of pools within that range. The bar with the greatest height represents the most common volume range. Overall, this histogram helps us visualize how pool volumes are distributed throughout the dataset.

```{R}
# Install and load the corrplot package
install.packages("corrplot")
library(corrplot)
```

```{R}
# Calculate correlations
correlations <- cor(cleaned_data[, c("Average Pool Volume (Cm3)", "Species Richness", "Percentage Canopy Cover", "Vegetation Cover")])
```

```{R, fig.width=8, fig.height=6}

# Plot the correlogram
corrplot(correlations, method = "circle", title = "Correlogram for Multiple Variables")


```
# This matrix shows the correlation analysis of variables such as Average Pool Volume (Cm³), Species Richness, Percentage Canopy Cover, and Vegetation Cover. It is displayed as a grid with variables listed on both the x-axis and y-axis. Each cell in the matrix demonstrates the correlation between the variables on its corresponding row and column. Larger and darker circles indicate stronger correlations, with blue circles representing positive correlations, and red circles representing negative correlations. The correlogram can help identify notable correlations, but it does not inherently provide statistical significance.

## Conclusion- Based on our graphical data analysis, various physical and environmental factors influence species richness in rockpool ecosystems. We discovered a limited relationship between species richness and pool volume, indicating that pool size alone does not necessarily determine biodiversity. Additionally, we observed a consistent decrease in species count across pools, suggesting that external or unmeasured factors could impact biodiversity levels. The box plot indicated that canopy cover has a limited impact on species richness. At the same time, the histogram showed that pool volumes are not evenly distributed, with most pools clustering within specific volume ranges. The correlogram provided a more detailed visualization, suggesting that multiple factors may affect species richness in complex ways, although we need further statistical validation to confirm this. This intricate pattern highlights the importance of future studies incorporating a range of ecological variables and rigorous statistical analyses to understand the subtle dynamics of rockpool biodiversity better. These studies should consider the synergistic effects of variables, potential ecological and temporal changes, and controlled experiments to establish causality, ultimately leading to a deeper understanding of the factors that sustain or diminish species richness in these unique ecosystems.







