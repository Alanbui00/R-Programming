# Picking a dataset
install.packages("pryr")
library(pryr)
iris <- iris

otype(iris)
iris
#generic function
data(iris)

list(iris)

#s3 and s4
s3iris <- list(name = "setosa", Sepal.Length = 4.9, Sepal.Length = 3) 
s3iris

s4iris <- new(iris,name="setosa", Sepal.Length = 4.9, Sepal.Length = 3)

#github s3 and s4
emp <- list(name="ramesh",age="24",department="sales",emp_id="00495")
class(emp) <- "employee"
emp


#s4
setClass("employeeS4", slots=list(name="character",age="numeric",department= "character",emp_id="numeric"))
emp2 <- new("employeeS4",name="james",age=27,department="accounts",emp_id=00564)
emp2

