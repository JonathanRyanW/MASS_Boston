#Load in the Boston data set
library(ISLR)
Boston

#Read about the data set
?Boston

#How many rows are in this data set? How many columns?
"There are 506 rows and 14 columns"

#What do the rows and columns represent?
"Information about the variables and their values can be read in the help page.
I have also copy and paste it in the README script."

#Make some pairwise scatterplots of the predictors (columns) in this data set.
#Describe your findings.
pairs(Boston)
"There are so many scatter plots it's too noisy. I have done some EDA before
doing this exercise. All the script can be read in the script folder."

#Are any of the predictors associated with per capita crime rate?
#If so, explain the relationship
library(corrplot)
corrplot(cor(Boston), method = "color")
"Yes, there are some variables that are strongly correlated with crime rate.
Such as rad, tax (positive) and black, medv(negative)."

#Do any of the suburbs of Boston appear to have particularly high crime rates?
#Tax rates? Pupil-teacher ratios? Comment on the range of each predictor

range(Boston$crim)
"Yes, it turns out there are towns which has very high crime rate per capita and
there are others with very low crime rate per capita."

range(Boston$tax)
"Yes it turns out some towns have very high taxes"

range(Boston$ptratio)
"The ptratio is not as varied as the previous 2 measurement. Although some towns
have almost double the other towns ptratio."

#How many of the suburbs in this data set bound the Charles river?
sum(Boston$chas)
"We find that 35 towns out of 506 (7%) Only are bound to the Charless river"

#What is the median pupil-teacher ratio among the towns in this data set?
summary(Boston$ptratio)
"The median is 19.05"

#Which suburb of Boston has lowest median value of owner occupied homes?
which(Boston$medv == min(Boston$medv))
"The 399th and 406th observations have the lowest median value of homes."

#What are the values of the other predictors for that suburb, and how do those
#values compare to the overall ranges for those predictors?

Boston[399,] - sapply(Boston, mean)
" The interpretation is as follows:
crim: The crime rate is much higher
zn:
indus: the town has more industry buildings
chas: the town is not bound to the Charles River
nox: Higher than the other towns in general
rm: almost 1 less room per dwelling (house)
age: More old buildings.
dis: The distance to employment centres are much smaller
rad: radial highways are more accessible
tax: Way higher than the other towns
ptratio: More teacher fot the students than other towns
black: More black people
lstat: More people come from the lower status of the population
medv: the value of homes is about $17.500 lower
"

"The same analysis can be done with the 406th observation"

#In this data set, how many of the suburbs average more than seven rooms per
#dwelling? More than eight rooms per dwelling?
sum(Boston$rm > 7)
"64 towns averaged more than 7 rooms per dwelling"

sum(Boston$rm > 8)
"Only 13 towns averaged more than 7 rooms per dwelling"

#Comment on the suburbs that average more than eight rooms per dwelling.
"Well they must be very prosperous to have such high number of rooms per house.
I wonder what their other measurements value are."