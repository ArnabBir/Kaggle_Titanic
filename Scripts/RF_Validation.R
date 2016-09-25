train_var <- c( "Survived", "Pclass", "Sex","Age", "Fare", "SibSp", "Embarked")
test_var <- c("Pclass", "Sex","Age", "Fare")
data <- read.csv("D://Github//Kaggle_Titanic//train.csv")
for(i in 1:ncol(data)){
  data[is.na(data[,i]), i] <- mean(data[,i], na.rm = TRUE)
}
#train <- data[1:500, train_var]
#test <- data[500:850, train_var]

smp_size <- floor(0.7 * nrow(data))

## set the seed to make your partition reproductible
set.seed(139)
train_ind <- sample(seq_len(nrow(data)), size = smp_size)

train <- data[train_ind, train_var]
test <- data[-train_ind, train_var]

training <- randomForest(train$Survived ~ ., train)
pred <- predict(training, test, type="response", na.rm = T)

pred <- ifelse(pred > 0.5,1,0)
#misClasificError <- ifelse(pred == test$Survived, 1 , 0)
misClasificError <- mean(ifelse(pred != test$Survived, 1 , 0))
print(paste('Accuracy',1-misClasificError))