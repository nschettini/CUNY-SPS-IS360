#Q1The caith dataset contains the cross-classifiation of people in Scotland by their eye and hair color.


#Q2 There are 4 different variables stored - blue, light, medium, and dark - which represent eye color.
require(MASS)
data(caith)
Eyecolor <- rowSums(caith)
Eyecolor

#Q3
data(caith)
HairColor <- colSums(caith)
HairColor

#4
hist(Eyecolor)
#The most common eye color is medium

#5
caitha <- as.matrix(caith)
caitha
#caitha compares/combines the two functions.  e.g.: the # of people that have blue eyes and fair hair, blue eyes and red hair, etc

#6
barplot(t(as.matrix(caith)))
#barplot converts the data from previous question (data table) into a bar graph.  Easier to read and compare results

#7
barplot(t(as.matrix(caith)), beside=TRUE)

#8
#Looking at the data tables and graph, the only realationship I can see is that people with certain eye colors
#would be more prone to having a certain hair color.  For example, people with dark eyes are more likely to have dark hair
