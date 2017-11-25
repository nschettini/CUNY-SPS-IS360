#Question 1
queue <- c ("James", "Mary", "Steve", "Alex", "Patricia")
#Question 2
queue[length(queue)+1] <- "Harold"
queue
#3
queue <- queue[!queue=="James"]
queue
#Question 4
queue <- append(queue, "Patricia", after=match("Mary", queue))
queue
queue <- c(queue[-5])
queue

#Question 5
queue <- queue[!queue=="Harold"]
queue
#QUestion 6
queue <- queue[!queue=="Alex"]
queue

#Question 7
match("Patricia", queue)

#Question 8
length(queue)