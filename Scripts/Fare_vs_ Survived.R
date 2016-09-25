data <- read.csv("D://Github//Kaggle_Titanic//train.csv")
counts <- table(data$Survived, data$Fare)
barplot(counts, main="Fare vs Survived Plot",
        xlab="Fare", ylab = "Number of people", col = c("darkblue","red"),
        legend = rownames(counts))
