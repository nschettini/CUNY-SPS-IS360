#1  SEE Below for answers to these questions
#1 How many people voted total
#2 How did the election turn out (yes vs no)
#3 How did younger people vote vs older people
library(dplyr) 
library(tidyr) 


#2
town = c('Edinburg', 'Glasgow') 
age = c('16-24', '25+')
yes = c(80100, 143000, 99400, 150400)
no = c(35900, 214800, 43000, 20700) 
messy <-data.frame(town, yes, no, age, stringsAsFactors = FALSE)
str(messy)

#3
messy %>% gather(vote, count, yes:no)->tidy
str(tidy)  

#each column is a variable and each row in an observation.


#4 *!*!*!

#4 answer for Q1  "How many people voted total"
total <- sum(tidy$count)
total

#4 answer for Q2 "How did the election turn out (yes vs no)"
aggregate(count ~ vote, data = tidy, FUN = sum)$count/total
#60% yes vs 40% no


#4 Q3  "How did younger people vote vs older people"

result_young <- aggregate(count ~ vote + age, data = tidy, FUN = sum)[c(1, 2), 3] / aggregate(count ~  age, data = tidy, FUN = sum)[1, 2]
result_young

result_old <- aggregate(count ~ vote + age, data = tidy, FUN = sum)[c(3, 4), 3] / aggregate(count ~  age, data = tidy, FUN = sum)[2, 2]
result_old
#answer: 69.5% yes vs 30.5% no.


#5
#other questions we could ask are:
#how many people voted in each age grou
#how man people voted in each city
#how did the vote go by city

