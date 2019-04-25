IsPrime <- function(n){ # n=Integer you want to know if is/not prime
  if ((n-floor(n)) > 0){
    cat(sprintf("Error: function only accepts natural number inputs\n"))
  } else if (n < 1){
      cat(sprintf("Error: function only accepts natural number inputs\n"))
    } else
  # Prime list exists
  if (try(is.vector(primes), silent=TRUE) == TRUE){
 
    # Prime list is already big enough
    if (n %in% primes){
      TRUE
    } else
    if (n < tail(primes,1)){
      FALSE
    } else
    if (n <= (tail(primes,1))^2){
      flag <- 0
      for (prime in primes){
        if (n%%prime == 0){
          flag <- 1
          break
        }
      }
     
      if (flag == 0){
        TRUE
      }
      else {
        FALSE
      }
    }
 
    # Prime list is too small; get more primes
    else {
      last.known <- tail(primes,1)
      while ((last.known)^2 < n){
        assign("primes", c(primes,GetNextPrime(primes)), envir=.GlobalEnv)
        last.known <- tail(primes,1)
      }
      IsPrime(n)
    }
  } else {
    # Prime list does not exist
    assign("primes", PrimesBelow(n,below.sqrt=TRUE), envir=.GlobalEnv)
    IsPrime(n)
  }
}
 
# Get next prime
GetNextPrime <- function(primes){ # primes=Known prime list
  i <- tail(primes,1)
  while (TRUE){
    flag <- 0
    i <- i+2
    if (i%%6 == 3){
      flag <- 1
    }
    if (flag == 0){
      s <- sqrt(i)+1
      possible.primes <- primes[primes<s]
      for (prime in possible.primes){
        if ((i%%prime == 0)){
          flag <- 1
          break
        }
      }
      if (flag == 0){
        break
      }
    }
  }
  i
}
 
# Primes below specified integer n; optionally only those below sqrt(n)
PrimesBelow <- function(n, below.sqrt=FALSE){
  if (below.sqrt == TRUE){
    m <- ceiling(sqrt(n))
  } else {
    m <- n
  }
   
  primes <- c(2,3)
  i <- 3
  while (i < m-1){
    flag <- 0
    i <- i+2
    if (i%%6 == 3){
      flag <- 1
    }
    if (flag == 0){
      s <- sqrt(i)+1
      possible.primes <- primes[primes<s]
      for (prime in possible.primes){
        if ((i%%prime == 0)){
          flag <- 1
          break
        }
      }
      if (flag == 0){
        primes <- c(primes, i)
      }
    }
  }
  primes
}

IsPrime(100)
## [1] FALSE
IsPrime(101)
## [1] TRUE
IsPrime(1234567891)
## [1] TRUE
