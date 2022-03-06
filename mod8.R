students <- read.table(file.choose(),header=TRUE, sep=",")
students
#install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
#install.packages("plyr")
library(plyr)
library(data.table)
#install.packages("Rcpp")
library(Rcpp)

y <- ddply(students,"Sex",transform, Grade.Average=mean(Grade)) 

write.table(y,"Sorted_Average")
write.table(y,"Sorted_Average",sep=",") 

i_students <- subset(students, grepl("i", students$Name, ignore.case=T))
i_students
write.table(i_students,"DataSubset",sep=",") 
