########## PROJECT EULER ##########


### PROBLEM 1
vector <- c()
for (i in 3:999) {
  ifelse(((i%%3 == 0) | (i%%5 == 0)), vector <- append(vector, i), next)
}
 
vector 
sum <- sum(vector)







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


start <- Sys.time()


upper_bound <- 20


### GCD ###
GCD <- function(x, y) {
  if(all(ceiling(c(x, y)) == c(x, y))) { #floor(x, y) can also be used
    x <- abs(x)
    y <- abs(y)
    if(all(c(x,y) == 0)) {
      print("Invalid")
    } else {
      if(any(c(x, y) == 0)) {
        return(c(x, y)[which(c(x, y) != 0)])
      } else{
        big <- max(x, y) / (1:max(x, y))
        small <- min(x, y) / (1:max(x, y))
        index <- which.max(small %in% big)
        return(small[index])
      }
    }
  } else {
    print("Both input should be integers")
  }
}




Num <- upper_bound

for (i in upper_bound:1) {
  Num <- ifelse(Num %% i == 0, Num, (Num*i)/GCD(Num, i))
}

Num



end <- Sys.time() - start
end
