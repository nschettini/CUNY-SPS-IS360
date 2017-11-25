vinput <- function(x){
  countna <- 0
  for (i in 1:length(x)){
    if(is.na(x[i]))
      countna <- countna +1
  }
  return(countna)
}

#takes numeric vector from above and determine the min, max, mean, median, 1Q,3Q, SD
project <- function(x){
  min <- min(x, na.rm = T)
  max <- max(x, na.rm = T)
  mean <- mean(x, na.rm=T)
  stdev <- sd(x, na.rm = T)
  quartiles <- quantile(x,probs = c(0.25,0.5,0.75), na.rm = T)
  countna <- vinput(x)
  
  c(mean = mean, max = max, min = min, firstquartile = quartiles[1], median = quartiles[2], thirdquartile= quartiles[3], stdev = stdev, nacount =countna)
}
project(10)