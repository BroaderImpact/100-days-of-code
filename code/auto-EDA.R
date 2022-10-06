install.packages("GGally")
install.packages("ggplot")

library(ggplot)
library(GGally)

# change plot size (optional)
options(repr.plot.width = 20, repr.plot.height = 10)

df %>%
  select("age", "cholesterol", "height", "weight") %>%
  ggpairs(mapping = aes(color = df$cardio, alpha = 0.5))