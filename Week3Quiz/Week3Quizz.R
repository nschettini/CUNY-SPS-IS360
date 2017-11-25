#1
q1 <- function() {fact <- 1
                  for (i in 1:12){fact<- fact*i}
                  fact
}
q1()

#2
q2<- function(){
  amount <- 1500
  r <- (3.24/100)*(1/12)
  n <- 6*12
  for (i in 1:n){
    amount <- amount * (1+r)
  }
  round(amount, digits = 2)
}

q2()

#3
q3 <- function(x = 1:20){
  sum <- 0
  for(i in 1:20){if (i %% 3 == 0){
    sum <- sum + i
  }
  }
  sum
  
}
q3()

#4
q4 <- function (x=2){
  sum <-0
  for(i in 1:10){
    sum = sum + x^i
  }
  sum
}

q4()

#5
q5 <- function(x=2)
{i <- 1
 sum <- 0
 while(i<11){
   sum <- sum + x^i
   i <- i +1
   
 }
 sum
}

q5()

#6
q6 <- function(x=2){
  a <- 1:10
  b <- x^a
  sum(b)
}

q6()

#7
q7 <- function(){
  (20:50)/5
}

q7()

#8
q8 <- function(word = "example"){
  rep(word,10)
}

q8()

#9
q9 <- function(a,b,c){
  print(paste("The quadratic equation is : ",a, " x^2 + ",b," x + ",c))
  x1 <- (-b + sqrt(b*b - 4*a*c))/(2*a)
  x2 <- (-b - sqrt(b*b - 4*a*c))/(2*a)
  print(paste("The roots are ",x1, ",", x2))
  
}
q9(1,2,1)

#10
q10 <- function(x){
  l <- length(x)
  sum <- 0
  for(i in 1:l){
    sum<- sum + x[i]
  }
  sum/l
}

#11
q11 <- function(x){
  mean(x, na.rm=TRUE)
  
}
q11(x)

#12
q12 <- function(a,b) {ifelse (b==0, a, q12(b, a %% b)) }


#13
q13 <- function(x,y){
  2+2-2
}
q13()