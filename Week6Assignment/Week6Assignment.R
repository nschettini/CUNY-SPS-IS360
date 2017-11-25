head(cats)
attach(cats)

hist(Bwt)
#When the Bwt decreases, the frquence increases
hist(Bwt, freq=F)
#When Bwt decreases, density increases
hist(Hwt, freq=F)
#Looking at the data, density seems to peak aroud 8 Hwt
hist(Bwt, Hwt)


boxplot(Bwt)
#the Q1 seems to be around 2.3, while Q3 is around 3.1  The median is about 2.7
boxplot(Hwt)
#Q1 around 9, median is at 10, and q3 is at 12.  There is also an outlier at 17
boxplot (Bwt, Hwt)
#lets you compare both sets of data side by side.  HWT is higher on average compared to Bwt

plot(Bwt)
plot(Hwt)
plot(Bwt, Hwt)
#the scatter plot shows a longer relationshio of the data over a period of time.  It shows that as the variable progressess, the data increases


#I hope I did this right -- it seemed to easy once I figured out how to make the graphs
#I only looked at the data that was provided from the document file on cats - which wasn't much.  
