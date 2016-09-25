data <- read.csv("D://Github//Kaggle_Titanic//train.csv")
data <- data[!(data$Cabin == ""),]
counts <- table(data$Survived, substr(data$Cabin,1,1))
barplot(counts, main="Cabin vs Survived Plot", ylim = c(0,70), 
       xlab= "Cabin",ylab = "Number of People", col=c("darkblue","red"),
       legend = c(rownames(counts)))
