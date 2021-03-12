library(MASS)
"The dataset to be analyzed is Boston from the MASS library."

cor(Boston$rm, Boston$medv) #0.6953599

"The correlation between number of rooms per dwelling and the median value of
owner-occupied homes in $1000s is positive and strong. This makes perfect sense.
As the price of homes increase, the property companies should make justifications
by adding in some more rooms. The owner of the homes will also increase the price
of their homes when they are selling it with rooms as justifications. That is
why the correlation is positive."

library(ggplot2)
ggplot(Boston, aes(medv, rm)) +
  geom_point(color = "sky blue", size = 2, alpha = 0.5) +
  geom_smooth(method = "lm", se = F, color = "red") +
  ylab("Number of Rooms per Dwelling") +
  xlab("Median Value of Homes (Thousands of Dollars)") +
  ggtitle("Value of Homes vs Number of Rooms") +
  theme_bw()

"A linear model already fit the data very well."