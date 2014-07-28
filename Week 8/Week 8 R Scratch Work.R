
coin.flips <- rbinom(100,1,0.5)

i <- 1
SevenInARow <- 0
sum.heads <- 0
sum.tails <- 0
while ((SevenInARow == FALSE) && i <= (length(coin.flips) - 6))
{
  sum.heads <- sum(coin.flips[i:(i+6)] == c(1,1,1,1,1,1,1))
  sum.tails <- sum(coin.flips[i:(i+6)] == c(0,0,0,0,0,0,0))
  if ((sum.heads == 7) || (sum.tails == 7))
  {
    SevenInARow <- 1
  }
  i <- i + 1
}


require(ggplot2)

Numbr.Tests <- 400
tests.numerators <- c(1:Numbr.Tests)*0

for (k in 1:Numbr.Tests)
{
  Seven.Tests.Num <- 1000
  Seven.Tests <- c(1:Seven.Tests.Num)*0
  
  for (j in 1:Seven.Tests.Num)
  {
    coin.flips <- rbinom(100,1,0.5)
    i <- 1
    SevenInARow <- 0
    sum.heads <- 0
    sum.tails <- 0
    while ((SevenInARow == FALSE) && i <= (length(coin.flips) - 6))
    {
      sum.heads <- sum(coin.flips[i:(i+6)] == c(1,1,1,1,1,1,1))
      sum.tails <- sum(coin.flips[i:(i+6)] == c(0,0,0,0,0,0,0))
      if ((sum.heads == 7) || (sum.tails == 7))
      {
        SevenInARow <- 1
      }
      i <- i + 1
    }
    Seven.Tests[j] = SevenInARow
  }
  tests.numerators[k] <- sum(Seven.Tests)  
}

TheResults <- data.frame(tests.numerators,Seven.Tests.Num, tests.numerators/Seven.Tests.Num)
head(TheResults)
hist(TheResults$tests.numerators/Seven.Tests.Num)
