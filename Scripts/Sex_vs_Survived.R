data <- read.csv("D://Github//Kaggle_Titanic//train.csv")
counts <- table(data$Survived, data$Sex)
barplot(counts, main="Age vs Survived Plot",
        xlab="Sex", ylab = "Number of people", col = c("darkblue","red"),
        legend = rownames(counts))

