library(randomForest)
train_var <- c("Survived", "Pclass", "Sex","Age", "Fare")
test_var <- c("Pclass", "Sex","Age", "Fare")
train_data <- read.csv("D://Github//Kaggle_Titanic//train.csv")
test_data <- read.csv("D://Github//Kaggle_Titanic//test.csv")
attach(train_data) #attaching data frame to reduce the length of the variable names associated to it.
attach(test_data) #attaching data frame to reduce the length of the variable names associated to it.

train_var <- c( "Survived", "Pclass", "Sex","Age", "Fare", "SibSp", "Embarked")
test_var <- c("Pclass", "Sex","Age", "Fare", "SibSp", "Embarked")

for(i in 1:ncol(train_data)){
  train_data[is.na(train_data[,i]), i] <- mean(train_data[,i], na.rm = TRUE)
}

for(i in 1:ncol(test_data)){
  test_data[is.na(test_data[,i]), i] <- mean(test_data[,i], na.rm = TRUE)
}

train1 <- train_data[train_var]
train2 <- train_data[test_var]
test <- test_data[test_var]
training <- randomForest(as.factor(train1$Survived) ~ ., train2)
pred <- predict(training, test, type="response", na.rm = T)

pred <- ifelse(pred > 0.5,1,0)
write.csv(pred, file = "D://Github//Kaggle_Titanic//Answer.csv")