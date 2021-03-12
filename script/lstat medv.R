library(MASS)
"The dataset to be analyzed is Boston from the MASS library."

cor(Boston$medv, Boston$lstat) #-0.7376627

"The correlation is strong. lstat is the percentage of lower status of the
population. I am not exactly sure what lower status means. But i will assume
that it is the percentage of people with low income. If this is true then the
correlation makes sense.

As more and more people are on the low income end of the spectrum, the property
and real estate industry will have to accomodate them with cheaper houses. That
is why the median value of the homes is low. Because most homes are cheap homes
that lower income folks live in."

library(ggplot2)
ggplot(Boston, aes(lstat, medv)) +
  geom_point(color = "sky blue", size = 2, alpha = 0.5) +
  geom_smooth(group = 1, se = F, color = "red") +
  ylab("Proportion of Low Income Residents (Percentage)") +
  xlab("Median Value of Homes (Thousands of Dollars)") +
  ggtitle("Value of Homes vs Proportion of Low Status Residents") +
  theme_bw()

"The linear model seems to fit the data quiet well. However i am sure that a
curve will do a better job than a line"
