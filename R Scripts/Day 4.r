# R cook book Michael Crawley https://www.cs.upc.edu/~robert/teaching/estadistica/TheRBook.pdf


library(stringr)

#https://amzn.com/0596528124 - Mastering regular expressions

x <- c("apple", "banana", "pear")
str_view_all(x, "an")


str_view_all(c("abc", "a.c", "bef"), "a\\.c")

# anchors

x <- c("appl$", "ganana", "pear")

str_view_all(x, "^a")

str_view_all(x, "\\$$")

str_detect(x, "^[^aeiou]")

x[str_detect(x, "^[^aeiou]")]



# alteration
x <- c('My associate id is 111654','My phone number is 8870008349')
d <- str_locate_all(x[2],'\\d{10}')

d
substr(x[2],d[1],d[2])



x <- c("123-456-7890", "1235-2351")
str_view(x, "\\d{3}-\\d{3}-\\d{4}")

#str_split
x <- 'My associate id is 111654. My phone number is 8870008349. My friend is 111653. His phone number is 2812718171'
result <- str_split(x,'\\.')
typeof(result)
length(result[[1]][2])

str_locate(result[[1]][i],'[0-9]{6,10}')

for (i in (1:length(result[[1]]))){

  print(str_locate(result[[1]][i],'[0-9]{6,10}'))   
}

# extract the associate id and phone numbers from above text


result[[1]][2]

