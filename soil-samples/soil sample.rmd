---
title: "Soil Sample project"
author: "Catherine Taylor"
date: "2023-12-22"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

### Analysisng data collected from three enviroments; Wivenhoe trail, back garden and the campus lake.

```{R}
install.packages("readr")
library("readr")
```
```{R}
data = read_tsv("data.tsv")
```
```{R}
head(data)
```
```{R}
# Install and load dplyr package
install.packages("dplyr")
library(dplyr)
```
```{R}
# Assuming your dataframe is named df, select specific columns
df_cleaned <- data %>%
  select(`tax`, `barcode01`, `barcode02`, `barcode03`, `barcode04`, `barcode05`, `barcode10`, unclassified, total)

# View the cleaned dataframe
head(df_cleaned)

```
```{R}
# Aggregate data by species
species_aggregate <- df_cleaned %>%
  group_by(tax) %>%
  summarise(across(starts_with("barcode"), sum, na.rm = TRUE)) # Summing up all barcode columns for each species

# View the aggregated data
head(species_aggregate)

```
```{R}
# Install the phyloseq package
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("phyloseq")

install.packages("tidyverse")

install.packages("lattice")
```






























































