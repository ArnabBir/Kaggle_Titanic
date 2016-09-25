data <- read.csv("D://Github//Kaggle_Titanic//train.csv")
data <- data[!(data$SibSp == 0),]
data <- data[!(data$SibSp == 1),]
counts <- table(data$Survived, data$SibSp)
barplot(counts, main="SibSp vs Survived Plot", 
        xlab= "SibSp",ylab = "Number of People", col=c("darkblue","red"),
        legend = c(rownames(counts)))
