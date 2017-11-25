Week7Assignment
===============
#this code can be run to compute the values in the assignment. 
#For example, enter in: (values from assignment)
x <- c(10.0,8.0,13.0,9.0,11.0,14.0,6.0,4.0,12.0,7.0,5.0)
y <- c(8.04,6.95,7.58,8.81,8.33,9.96,7.24,4.26,10.84,4.82,5.68)

#then run the corrosponding function 

dataanalysis <- function(x, y)
{ 
  #produces line plots for X and Y   
  plot(x, type = "l", col = "blue", ylab = " X (Blue) / Y (Red)", xlab = "Index")
  lines(y, col="red")
  
  #plots a scatterplot for X and Y
  plot(x,y, xlab = "X", ylab = "Y", col = "black")
  
  #displays the different characteristics of X and Y
  m <- matrix(ncol = 2,nrow = 6)
  xsummary <- as.numeric(summary(x))
  ysumamry <- as.numeric(summary(y))
  m[,1] <- xsummary
  m [,2] <- ysummary
  rownames(m) <- c("Min", "1st Q", "Median","Mean","3rd Q", "Max")
  colnames(m)  <- c("X","Y")
  m
  
  #computes the correlation and covariance between X and Y and runs a correlation test
  cor(x,y)
  cov(x,y)
  cor.test(x,y)
  
  #displays the boxplots of X and Y
   boxplot(x, main = "Boxplots", ylab = "X (black) / Y (red)")
   boxplot(y, add=TRUE, col = 2)
  
  # Regression of y on x
   lm(y~x)
}
