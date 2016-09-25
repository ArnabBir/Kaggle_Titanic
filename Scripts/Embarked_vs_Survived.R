data <- read.csv("D://Github//Kaggle_Titanic//train.csv")
counts <- table(data$Survived, data$Embarked)
barplot(counts, main="Embarked vs Survived Plot",
        xlab= "Embarked",ylab = "Number of People", col=c("darkblue","red"),
        legend = rownames(counts))