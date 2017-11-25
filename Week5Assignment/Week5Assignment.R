source(dplyr)
select(mtcars, mpg, cyl, wt, am ) %>% group_by(cyl, am)%>%summarize(avgmpg = mean(mpg), avgwt = mean(wt))%>%filter(avgmpg>20)