Freq <- c(0.6,0.3,0.4, 0.4,0.2,0.6,0.3,0.4,0.9,0.2)
bloodp<- c(103,87,32,42,59,109,78,205,135,176)
first <- c("bad","bad","bad","bad","good","good","good","good", NA,"bad")
second <- c("low","low","high","high","low","low","high","high","high","high")
finaldecision <- c("low","high","low","high","low","high","low","high","high","high")

data <- data.frame(Freq, bloodp, first, second, finaldecision)
data$Freq <- as.double(data$Freq)
data$first <- as.factor(data$first)
data$second <- as.factor(data$second)
data$finaldecision <- as.factor(data$finaldecision)

plot1 <- boxplot(bloodp ~ first, data, 
                 main = "General doctor",
                 xlab = "Assessment",
                 ylab = "Blood Pressure",
                 col = (c("blue", "red")))
plot2 <- boxplot(bloodp ~ second, data, 
                 main = "External doctor",
                 xlab = "Assessment",
                 ylab = "Blood Pressure",
                 col = (c("blue", "red")))
plot2 <- boxplot(bloodp ~ finaldecision, data, 
                 main = "Head of Emergency Unit",
                 xlab = "Assessment",
                 ylab = "Blood Pressure",
                 col = (c("blue", "red")))

hist1 <- hist(data$bloodp, 
              main = "Blood pressure of patients", 
              xlab = "Blood pressure",
              ylab = "Frequency of visits", 
              col = (c("blue", "red", "blue", "red", "blue")))

hist1
