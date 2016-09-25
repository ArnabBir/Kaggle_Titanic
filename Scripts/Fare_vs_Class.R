data <- read.csv("D://Github//Kaggle_Titanic//train.csv")
plot(data$Fare, data$Pclass, main="Fare vs Class Plot", 
     xlab="Fare", ylab="Class", pch=19, col ="blue")
