## Packages

### install.packages

### library

library(ggplot2)
qplot

x <- seq(-1, 1, by = 0.2)

y <- x^3
y

qplot(x, y)

x <- c(1, 2, 2, 2, 3, 3)
qplot(x)
qplot(x, binwidth = 1)
qplot(y, binwidth = 1)

x2 <- c(rep(1, 5), rep(2, 4), rep(3, 2), 4)
qplot(x2, binwidth = 1)

x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)
qplot(x3, binwidth = 1)

replicate(3, 1+1)
replicate(10, roll())

rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)

roll

roll3 <- function() {
  die <- 1:6
  prob <- c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8)
  dice <- sample(die, size = 2, replace = T, prob = prob)
  sum(dice)
}
rolls3 <- replicate(10000, roll3())
qplot(rolls3, binwidth = 1)

## Getting Help with Help Pages

### Parts of a Help Page

roll <- function() {
  die <- 1:6
  prob <- c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8)
  dice <- sample(die, size = 2, replace = T, prob = prob)
  sum(dice)
}

rolls<- replicate(10000, roll())
qplot(rolls, binwidth = 1)
