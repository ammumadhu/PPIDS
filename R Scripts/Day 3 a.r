### Data Hierarhcy in R 
??util
a <-  2
b =  3
ls()
rm(list=ls())
install.packages("tidyverse")
library(tidyverse)
## Scalar Hadley Wickam
a <- 1/2
a
## Multiple assignment possible Alt- 
a <- b <- c <- 'datascience'
##Alt+shift+k 
my_vector <- c(1,5,6,7)
my_vector <- 1:100
my_vector
my_vector <- my_vector
sum(my_vector==56)
###R index starts with 1 -- index access
length(my_vector)
letters
LETTERS[7]
#print(paste(LETTERS[2],"datascience"))
## adding more elements
my_vector <- c(my_vector,101:105)
my_vector_c <- c(my_vector,"ds")
my_vector_c <- my_vector_c[-106]
my_vector_c <- as.integer(my_vector_c)
my_vector_c
typeof(my_vector_c)
typeof(my_vector)
##sequence
seq(100,-21,-2)
## vector addition
str(my_vector)
my_vector + 1
my_vector + c(3,4,5)
my_vector <- my_vector[1:12]
## Matrix
my_matrix <- matrix(my_vector,3,4)
my_matrix
dim(my_matrix)
my_matrix[1,4]
### List
my_vector <- 111654:111660
my_marks <- 93:99
names <- c("Madhu","Raman","Vidhya","Subhashini","Sahoo","Prasad","Mothilal")
my_list <- list(my_vector,my_marks,names)
my_list
my_list[[1]]
my_list[[1]][2]
my_list[[2]][1] <- '93'
my_list[[2]]
as.integer(my_list[[2]])
my_list[[2]]
my_list[[2]] <- as.integer(my_list[[2]])
length(my_list[[2]])
#### for loop
for (i in seq(1,10,2)){
  
  print(paste(i," welcome to Datascience"))
  }

x = -1 
if (x > 0) {
  print("x is positive")
} else {
  print("x is zero or negative")
}

### exercises
##### PRINT every 5th letter in lowercase
print(letters[seq(5,length(letters),5)])
##### sum all the marks present in the list

### Dataframe
### what are the typical operations performed on excel



#1)select the observations by value
#2)reorder the rows
#3)pick variables by their names
#4)create new variables
#5)summary

library(tidyverse)
library(insuranceData)
data("AutoBi")
edit(AutoBi)
colnames(AutoBi)
ncol(AutoBi)


### Filter rows to identify how many claimants are married)
filter(AutoBi,is.na(MARITAL))
filter(AutoBi, MARITAL == 1,LOSS > 0.5)
filter(AutoBi, MARITAL == 1 | LOSS > 0.5)


data("AutoClaims")
#### exercise Auto claims for Males with Age 70 and 80 falling under state 12 with amount > 6000






