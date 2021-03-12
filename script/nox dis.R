"
nox: nitrogen oxides concentration (parts per 10 million).
dis: weighted mean of distances to five Boston employment centres.
"

cor(Boston$nox, Boston$dis) #-0.7692301

"Why is the negative correlation between the concentration of Nitrogen oxides
and distance to employment centres so so strong?"

"First of all we need to know what Nitrogen Oxides is. According to an article
by CorrosionPedia which can be read here:
https://www.corrosionpedia.com/definition/5304/nitrogen-oxide. Nitrogen oxide is
a common term for mono-nitrogen oxides such as nitric oxide (NO) and nitrogen
dioxide (NO2). Its chemical formula is (NOx). It is formed when nitrogen (N2)
comes in contact or reacts with oxygen (O2). It is a group of highly reactive
gases, toxic and one of the causes of acid rain. It does not have any odor or
color. It is produced by human activity and when fossil fuels are burned at high
temperatures. It is considered to be a pollutant."

"This is weird. If the distance to five Boston employment centres is high then
people should spent more time driving, thus, producing more nitrogen oxides. The
correlation should be positive, but in reality it is negative. Could it be that
driving produces many more chemical compounds other than nitrogen oxide in much
larger quantity such that even though there is more nitrogen oxide, the
concentration actually goes down because the other compounds are increasing by
a larger degree?"

library(ggplot2)
ggplot(Boston, aes(dis, nox)) +
  geom_point(color = "sky blue", size = 2, alpha = 0.5) +
  geom_smooth(group = 1, se = F, color = "red") +
  xlab("Mean Distance to 5 Boston Employment Centre") +
  ylab("Nitrogen Oxide Concentration (Parts Per 10 Million)") +
  ggtitle("Distance to Employment Centre vs NOx Concentration") +
  theme_bw()

"The relationship is clearly non-linear, that is why we didn't use lm."

'Oh after i think about it. I think i have found the answer. The reason why the
correlation is negative is this. High value for the mean distance to the 5
employment centre means that the town is more rural. The buildings are far from
each other, like in a small town which has considerably fewer cars than the
larger towns. This is why the concentration is lower in the small towns. Even
though people need to drive longer, there is simply way less people.

Furthermore we all know that the air quality is better in small towns than large
ones. This happens because small towns have fewer cars, fewer factories, fewer
people. This is why people go on a vacation to the mountains, like Puncak in
Indonesia. People living in Jakarta (the capital city of Indonesia) often goes
to Puncak just to refresh themselves.

Question answered."