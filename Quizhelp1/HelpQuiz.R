#Question 1
x <- c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1)
x
#Question 2
as.character(x)
#Question 3
factor1 <- factor(x)
factor1
#Question 4
levels(factor1)
#Question 5
z <- (x) 
z <- 3*x^2 + 4*x + 1
z
#Question 6
var1 <- c(1, 2, 3, 4, 5)
var2 <- c(150, 250, 350, 450, 550) #reading level of book
var3 <- c("Fiction","Non-fiction","Fiction", "Non-Fiction", "Fiction")
var4 <- factor(c("Fantasy","History", "Fantasy","History","Fantasy"))
diab.dat <- data.frame(var1, var2, var3, var4)

mat.array=array(dim=c(2,2,3))
set.seed(12345)
mat.array[,,1]<-rnorm(4)
mat.array[,,2]<-rnorm(4)
mat.array[,,3]<-rnorm(4)

obj.list <- list(elem1=var1,elem2=var2, elem3=var3, elem4=var4,elem5=diab.dat, elem6=mat.array)

obj.list

obj.list[[1]]

#Question 7
Char <- c ("a, b, c")
y1 <- c(1, 2, 3, 1, 2, 3, 1, 2, 3, 1)
Factor <- as.factor(y1)
Factor
num <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
date <- as.Date("2014-09-2")
date
theDF <- data.frame(Char, Factor, num, date)

# Question 8
Char <- c ("a, b, c")
y1 <- c(1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 22)
Factor <- as.factor(y1)
Factor
num <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11)
date <- as.Date("2014-09-5")
date
theDF <- data.frame(Char, Factor, num, date)

# Question 9
theFile <-
  "C:\Users\Nick\Documents\temperatures.csv"
temps <- read.table (file = theFile, header = TRUE, sep = ",")

#Question 10
theFile2 <-
  "C:\Users\Nick\Documents\measurements.txt"
temps <- read.table (file = theFile2, header = TRUE, sep = "\t")

#Question 11
theFile3 <-
  "http://www.cunySPSdata.com/data/is360.csv"
temps <- read.table (file = theFile3, header = TRUE, sep = "|")