#Week9Project4

library(rvest)

indeed <- html("http://www.indeed.com/")
resume <- indeed %>% 
  html() %>% 
  html_nodes("b")
  html_text() 
resume


Anscombe <- html("http://en.wikipedia.org/wiki/Anscombe's_quartet")
title <- Anscombe %>% 
  html() %>% 
  html_nodes("#firstHeading span")
html_text() 
title


startrek <- html("http://www.imdb.com/title/tt0092455/")
cast <- startrek %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()
cast
