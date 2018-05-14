### Day 8 Logistic Regression in R 

titanic <-  read.csv('D:\\Downloads\\titanic.csv',header=T)
edit(titanic)

num <- c(1,1,1,0,1,0,1,0,1,0,1,0,1,0,2,3,3,4,2,2,5)

num

num + 1

num <- factor(num)

num + 1

attach(titanic)

## titanic exploration in Excel for non linearity

str(titanic)

plot(Age,Survived)


rpivotTable::rpivotTable(titanic)

### sapply 

d <- c(NA,NA,1,2,3,4,5)

sum(is.na(d))

sapply(d,function(d) (d*2))

colnames(titanic)

sapply(titanic,function(x) sum(is.na(x)))

install.packages('Amelia')

library(Amelia)


missmap(titanic, main = "Missing values vs observed")

attach(titanic)

#contrasts(Sex)


row_agena <- which(is.na(titanic$Age))

titanic$Age[row_agena]

mean(titanic$Age,na.rm=T)

titanic$Age[row_agena] <-  mean(titanic$Age,na.rm=T)

sapply(titanic,function(x) sum(is.na(x)))

colnames(titanic)

titanic_new <- titanic[,-c(1,4,9,10,11)]

colnames(titanic_new)

model <- glm(Survived ~.,family=binomial(link='logit'),data=titanic_new)

summary(model)

titanic <- titanic[,-c(4,9)]

titanic

colnames(titanic)

titanic <- titanic[,-c(1,4,9,10,11)]

colnames(titanic)

nchar(stringr::str_trim(titanic$Embarked))

which(nchar(stringr::str_trim(titanic$Embarked))<1)

titanic$Embarked[nchar(stringr::str_trim(titanic$Embarked))<1] <- 'S'


model <- glm(Survived ~.,family=binomial(link='logit'),data=titanic)

summary(model)

##doBy::summaryBy(Survived~.,data=titanic)

library(modelr)

add_predictions(titanic_new,model,'pred_survival')

## do the same for Age.


logit2prob <- function(x){
  1 / (1 + exp(-x))
}

library(tidyverse)

as.numeric(FALSE)

titanic_final <- add_predictions(titanic_new,model,'pred_survival') %>% mutate(pred_final=logit2prob(pred_survival)) %>% mutate(pred_predict_survival = as.numeric(pred_final > 0.48 ))

edit(titanic_final)


add_predictions(titanic,model) %>% mutate(pred=logit2prob(pred),pred = as.numeric(pred > .5))

titanic_new <- add_predictions(titanic,model) %>% mutate(pred=logit2prob(pred),pred = as.numeric(pred > .5))

titanic_new

mean(titanic_final$Survived == titanic_final$pred_predict_survival)

707/891

