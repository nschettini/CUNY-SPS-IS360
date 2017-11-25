install.packages("XML")
require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlPool <- readHTMLTable(theURL, which = 1, header = FALSE, stringsAsFactors = FALSE)
bowlPool

# 1. What type of data structure is bowlpool?
class(bowlPool)
#data.frame

# 2. Suppose instead you call readHTMLTable() with just the URL argument, against the provided URL, as shown below
theURL <- "http://www.w3schools.com/html/html_tables.asp"
hvalues <- readHTMLTable(theURL)
# What is the type of variable returned in hvalues?
#a list with 7 elements. 1st and 6th are data frames, the rest are null.

# 3. Write R code that shows how many HTML tables are represented in hvalues
length(which(lapply(hvalues, is.data.frame)==TRUE))
which(lapply(hvalues, is.data.frame)==TRUE)

# 4. Modify the readHTMLTable code so that just the table with Number,FirstName, LastName, # and Points is returned into a #dataframe
table <- readHTMLTable(theURL, which = 1)

#5  Modify the returned data frame so only the Last Name and Points columns are shown.
table <- subset(table, select = -c(1, 2))

#6Identify another interesting page on the web with HTML table values. 
url1 <- "http://en.wikipedia.org/wiki/List_of_United_States_cities_by_population"

#7How many HTML tables does that page contain?
table1 <- readHTMLTable(url1)
length(which(lapply(table1, is.data.frame)==TRUE))
#60

# 8 Identify your web browser, and describe (in one or two sentences) how you view HTML page source in your web browser.
#I use chrome. I can right click and select "view page soruce"


