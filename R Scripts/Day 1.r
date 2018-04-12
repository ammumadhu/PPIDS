#
install.packages("MASS")

library(MASS)
input.data = Cars93
head(input.data)
tail(input.data)
str(input.data)
summary(input.data,8)
count(names(input.data))
count.fields(names(input.data))
len(a)
x <- 3
print(x)
x[1]
x
str(x)
x.count()
length(x)
z = c("kohli","Ashwin","Rahul","Shami")
z[2:3]
d <- z[2]
d
d[2]
v1 <- 1:10
v1
str(v1)
class(v1)
v3 = c("Introduction","to","R")
V3
v3
v4 = c(TRUE,FALSE,TRUE,FALSE)
v4
substring("madhu",1,2)
s1 = 1:5
s1
seq(1,15,2)
rep(7,5)
A:K
letters
1:10
"A":"K"
a <- 1:10
a[[10:10]]
b <- 11:21
a+b[-11]
c(a,11)+b
a*b[-11]
add(a,b)
add <- function(a,b){
  print(length(a))
  print(length(b)) }
add(a,b)
l1 <- list(2,"m",z)
class(l1)
l1
class(z)
format(z)
typeof(l1)
l1
d <- data()
d
d[[1]][4]
d[1][2]
help("mean")
?dplyr
help(package=dplyr)
v.a
df <- data.frame(1:26,letters)
df
colnames(df) <- c("num","alpha")
colnames
df
df$alpha
summary(input.data)
prop.table(table(input.data$Type)) * 100
hist(input.data$Horsepower,col=rainbow(7))
library(ggplot2)
ggplot(input.data,aes(x=Price)) +
      geom_histogram(aes(y=..density..),binwidth = 4, colour="black", fill ="white") +
  geom_density(alpha=0.2, fill="#FF6666") 

ggplot(input.data,aes(x=Type, y=Price)) +
    geom_bar(stat="identity")

table(input.data$Type)
