?paste
## Identifying the prime numbers
## -----------------------------
for (i in 1:100){
  prime = 1
  if (i %%2 == 0){
    prime = 0 
  }
  if (i %%3 == 0){
    prime = 0 
  }
  if (i %%5 == 0){
    prime = 0 
  }
  if (i %%7 == 0){
    prime = 0 
  }
  
  if (i == 1){
    print('1 is neither prime nor composite')
    prime = 0}
  
  if (i == 2 || i == 3 || i== 5 || i== 7){
    print(paste(i," is a prime"))
    prime = 0      
    }
  
  if (prime == 1){
    print(paste(i," is a prime"))}
  
}

        
  
##2 Priority

x <- 10
1:x-1  # 1:3-1 ==> 1-1


##3 recycling 

p <- c (3, 5, 6, 8)
q <- c (2, 3, 3)
p+q


##4 matches - How many matches were played in the month of April for 2017 season

matches
nrow(filter(matches,substr(date,1,7) == '2017-04')) # 36 
nrow(filter(matches,substr(date,6,10) == '04-14')) # 9 

## length of x 
W <- c (22,3,7,NA,NA,67)
length(w)

