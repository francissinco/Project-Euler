########## PROJECT EULER ##########





### PROBLEM 2
Fib <- c()
Fib[1] <- 1
Fib[2] <- 2

i <- 3

repeat {
  Fib[i] <- Fib[i-1] + Fib[i-2]
  if(Fib[i] > 4000000)
    break
  i <- i+1
}

Fib <- Fib[-length(Fib)]
sum <- sum(Fib[Fib %% 2 == 0])






### PROBLEM 5


library(schoolmath)



upper_bound <- 20
Num <- upper_bound

for (i in upper_bound:1) {
  Num <- ifelse(Num %% i == 0, Num, (Num*i)/gcd(Num, i))
}

Num






### PROBLEM 7
num <- 1.5


prime.check <- function(x){
  ifelse(is)
sum(num %% (2:floor(sqrt(num))) == 0) == 0
  
  
  
}
