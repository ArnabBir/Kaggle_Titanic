data <- read.csv("D://Github//Kaggle_Titanic//train.csv")
counts <- table(data$Survived, data$Age)
barplot(counts, main="Age vs Survived Plot",
        xlab="Age Groups", col=c("darkblue","red"),
        legend = rownames(counts))

