data <- read.csv("D://Github//Kaggle_Titanic//train.csv")
counts <- table(data$Survived, data$Pclass)
barplot(counts, main="Class vs Survived Plot",
        xlab="Class", col=c("darkblue","red"),
        legend = rownames(counts))

