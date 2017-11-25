#1
#Obtain - Take in data using scripting languages (C++, Python, etc) - supports auto retrieval 
#Scrub - Cleaning data.  Removes excess characters, makes reading data easier
#Explore - Getting to know your data.  Look at your data, study it, get to know it
#Models - models are used to predict and interpert data.
#INterpret - Looking through your data to understand what exactly it's showing you

#2
#IF I had to pick one of the two, I would choose the well implemented design. A decently designed function
#but well implemented, would allow easier use for users to become more productive. 

#3 Showing the day of the year in numeric format
as.numeric(as.Date("1970-09-19"))

#4
#POSIXct shows the number of sec since 1970 as a numeric vector
#POSIXlt is a named list of vectors representing:
#sec, min, hour, mday, mon, year, wday, yday, isdst, zone

#5
Gleick <- "How long ago was Claude Shannon born?"
d1 <- as.POSIXct("1916-4-30")
d2 <- as.POSIXct("2014-9-19")
d2 - d1 

#7
date1 <- as.POSIXct("19-09-2014",format = "%d-%m-%Y", tz = "EST")
date1

#8
as.numeric(format(date1, "%m"))

#9
seq(ymd("2005-01-01"), ymd("2014-31-12"), by='weeks')

#10
#We can use stringAsFactors=FALSE 