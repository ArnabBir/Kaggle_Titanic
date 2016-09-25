library(randomForest)
data <- read.csv("D://Github//Kaggle_Titanic//train.csv")
var <- c("Survived", "Pclass", "Sex","Age", "SibSp", "Parch", "Fare", "Embarked")
data <- data[var]
data <- na.omit(data)
rf_Survival <- randomForest(data$Survived ~ ., data)
print(rf_Survival)
print(importance(rf_Survival,type = 2)) 
