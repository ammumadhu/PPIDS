library(tidyverse)
data("mtcars")

colnames(mtcars)

edit(mtcars)

mtcars$disp

mtcars$vs

attach(mtcars)

disp

dim(mtcars)

mtcars[,-(3:5)]

data(package = .packages(all.available = TRUE))

data(package = 'MASS')


install.packages('modelr')
library(modelr) 
install.packages('broom')
library(broom) 

library(MASS)
edit(Cars93)
Turn.circle
Cars93$Turn.circle
attach(Cars93)
Turn.circle

## sample 

d <-  1:74

sample(d,0.8*length(d))

###UDF  Function in R
oddeven <- function(x){
  if (x%%2 == 1){
     print(paste(x,' is Odd'))
  }
  else{
    print(paste(x,' is even'))
  }
}
oddeven(21)


## Factorial function - exercise
## The factorial of number 5 is 120


### sapply 

sapply(1:3,function(x) x^2)

a <- 1:5

b <- 1:5

c <- data.frame(a,b)
c
sapply(c,function(x){sum(x)})

### Lnear Model Perfect fit

x <- c(126, 162, 112, 182, 94, 114, 152, 144, 124, 96)
y <- c(64, 82, 57, 92, 48, 58, 77, 73, 63, 49)

#y = 0.5 x + 1

cor(y,x)


relation <- lm(y~x)

print(relation)

new_df <- add_predictions(data.frame(x,y),relation,'pred')

new_df

summary(relation)


plot(y -new_df$pred)

### MSE 



add_predictions(data.frame(x,y),relation,'pred') %>% summarize(MSE = mean((y-pred)^2))

# add_predictions(advertising,model1,'pred_sales') %>% summarize(MSE = mean((sales-pred_sales)^2))



gather_predictions(data.frame(x,y),relation) %>% group_by(model) %>% summarise(MSE = mean((y-pred)^2))


add_predictions(data.frame(x=100),relation,'pred')


plot(x,y,abline(lm(y~x)))

# Noise in the data

x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(64, 82, 57, 92, 48, 58, 77, 73, 63, 49)


relation <- lm(y~x)

print(relation)

summary(relation)

# y = -37.4 + 0.67 (x)

add_predictions(data.frame(x=170),relation,'pred')#predict(relation,data.frame(x=170))

plot(x,y,abline(lm(y~x)))


# Y could be even a polynomial function of x 





x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(14.28820573,15.19090596,13.74734012,15.6381817,13.3137085,13.66190379,15.37908816,14.76714533,14.32882801,13.44552314)


relation <- lm(y~x)


relation_new <- lm(y~I(x^3)+I(x^2))


add_predictions(data.frame(x,y),relation_new,'pred')

# response variable ~ explanatory variables

## Another example

cars

head(cars)



# correlation analysis

cor(cars$speed, cars$dist)

dim(cars)[1]

linearMod <- lm(dist ~ speed, data=cars)

linearMod 

# dist = ???17.579 + 3.932???speed


summary(linearMod)  

modelSummary <- summary(linearMod)  

modelCoeffs <- modelSummary$coefficients 

modelCoeffs

beta.estimate <- modelCoeffs["speed", "Estimate"]

beta.estimate

std.error <- modelCoeffs["speed", "Std. Error"]

t_value <- beta.estimate/std.error  

t_value


# Training and Test Data 

sample(1:50,0.75*50)


trainingRowIndex <- sample(1:nrow(cars), 0.8*nrow(cars))

trainingRowIndex

trainingData <- cars[trainingRowIndex, ]

trainingData

testData  <- cars[-trainingRowIndex, ] 


#Fit the model on training data and predict dist on test data

lmMod <- lm(dist ~ speed, data=trainingData)

add_predictions(testData,lmMod,'Pred_Dist')


summary (lmMod)

cor(distPred,testData$dist)

distPred-testData$dist

plot(distPred-testData$dist)

### Another example


advertising <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv",header=T)

edit(advertising)

# which is dependent

#sample <-  sample(1:nrow(advertising),0.7*nrow(advertising))
#train <- advertising[sample, ]
#test <- advertising[-sample, ]



attach(advertising)


### exercise identify the variables, their signigicant, how we could elevate model accuracy



model1 <- lm(sales ~ TV , data = train)

summary(model1)


add_predictions(test,model1,'pred')


test %>% add_predictions(model1,'pred') %>% summarize(MSE = mean((sales - pred)^2))

model2 <- lm(sales ~ TV + radio + newspaper, data = train)


list(model1 = broom::glance(model1), model2 = broom::glance(model2))

model3 <- lm(sales ~ newspaper+TV * radio, data = train)

model4 <- lm(sales ~ TV * radio, data = train)

summary(model4)

list(model1 = broom::glance(model1), 
     model2 = broom::glance(model2),
     model3 = broom::glance(model3),
     model4 = broom::glance(model4))


advertising %>% gather_predictions(model1,model2,model3,model4) %>% group_by(model) %>% summarise(MSE = mean((sales-pred)^2))

advertising %>% gather_predictions(model1,model2,model3,model4)

### Factor 

data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)

factor(data)


## categorical independent variables


hsb2 <- read.csv("https://stats.idre.ucla.edu/stat/data/hsb2.csv")

edit(hsb2)

model1 <- lm(write~factor(race),data=hsb2)

summary(model1)



credit <- read.csv("D:\\Data Science Training\\Credit.csv",header=T)

edit(credit)

model1 <- lm(Balance ~ Student, data = credit)

summary(model1)



