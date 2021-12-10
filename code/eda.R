# setwd("/Users/christineamuzie/Documents/GitHub/100-days-of-code/code/eda.R")

library(tidyverse)
library(dplyr)

# QUESTIONS ASKED
# What type of variation occurs within my variables?
# What type of covariation occurs between my variables?

# VARIATION
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))
diamonds %>%
    count(cut)
# MISSING VALUES

# COVARIATION

# PATTERNS AND MODELS

# GGPLOT2 CALLS

# MORE