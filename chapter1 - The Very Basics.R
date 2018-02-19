# Objects

ls()

1:6
a <- 1
a
a + 2

die <- 1:6
die

Name <- 1
name <- 0
Name + 1
name + 1

my_number <- 1
my_number
my_number <- 999
my_number

ls()

die - 1
die / 2
die * die

1:2
1:4

die

die + 1:2
die + 1:4

die %*% die # sum(die*die)
die %o% die

# Functions

round(3.1415)

factorial(3)

mean(1:6)
mean(die)

round(mean(die))

sample(1:4, size = 2)
sample(x = 1:4, size = 2)

sample(x = die, size = 1)
sample(die, size = 1)
sample(x = die, size = 1)

# round(3.1415, corners = 2)
args(round)

round(3.1415, digits = 2)
round(3.1415, 2)

sample(die, 1)
sample(size = 1, x = die)

# Sample with Replacement

sample(die, size = 2)

sample(die, size = 2, replace = T)

dice <- sample(die, size = 2, replace = T)
sum(dice)

## Writing Your Own Functions

die <- 1:6
dice <- sample(die, size = 2, replace = T)
sum(dice)

### The Function Constructor

my_function <- function() {}

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = T)
  sum(dice)
}
roll()

dice
1+1
sqrt(2)

dice <- sample(die, size = 2, replace = T)
two <- 1 + 1
a <- sqrt(2)

## Arguments

# roll2 <- function() {
#   dice <- sample(bones, size = 2, replace = T)
#   sum(dice)
# }
# roll2()

roll2 <- function(bones) {
  dice <- sample(bones, size = 2, replace = T)
  sum(dice)
}


roll2(bones = 1:4)
roll2(bones = 1:6)
roll2(bones = 1:6)
roll2(1:20)

# roll2()

roll2 <- function(bones = 1:6) {
  dice <- sample(bones, size = 2, replace = T)
  sum(dice)
}
roll2
roll2()
roll2()

## Scripts


