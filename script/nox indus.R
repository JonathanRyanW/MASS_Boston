library(MASS)
"The dataset to be analyzed is Boston from the MASS library."

cor(Boston$nox, Boston$indus) #0.7636514

"The positive correlation is so strong. It makes perfect sense. The more a town
has industrial building, the more fossil fuels is burned. Some of the industry
may burn fossil fuel for the purpose of doing their operations, but mostly the
fossil fuels are burned to get the employees and the workes to the factory! This
is why the NOx concentration goes up. The more industry a town has, the more
urban it is. The more people come to work there, the more NOx gas they produce!"

library(ggplot2)
ggplot(Boston, aes(indus, nox)) +
  geom_point(color = "sky blue") +
  geom_smooth(method = "lm", se = F, color = "red") +
  xlab("Proportion of Non-retail Business Acres") +
  ylab("Nitrogen Oxide Concentration (Parts Per 10 Million)") +
  ggtitle("Non-retail Business Acres vs NOx Concentration") +
  theme_bw()