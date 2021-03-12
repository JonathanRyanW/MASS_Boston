library(MASS)
library(corrplot)

corrplot(cor(Boston), method = "color")
"The plot is saved in the correlations.png file"