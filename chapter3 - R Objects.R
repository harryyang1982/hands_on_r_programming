## Atomic Vectors

die <- c(1, 2, 3, 4, 5, 6)
die

is.vector(die)

five <- 5
five

is.vector(five)

length(five)
length(die)

int <- 1L
text <- "ace"

int <- c(1L, 5L)
text <- c("ace", "hearts")

int
text

sum(int)
#sum(text)

### Doubles

die <- c(1, 2, 3, 4, 5, 6)
die
typeof(die)
typeof(int)

## Integer

int <- c(-1L, 2L, 4L)
int
typeof(int)

sqrt(2)^2 - 2
# as.integer(sqrt(2)^2 - 2)

### Characters

text <- c("Hello", "World")
text

typeof(text)

typeof("Hello")

### Logicals

3 > 4

logic <- c(TRUE, FALSE, TRUE)
logic

typeof(logic)
typeof(F)

# Complex and Raw

comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp

typeof(comp)

raw(3)
typeof(raw(3))

hand <- c("ace", "king", "queen", "jack", "ten")
hand

typeof(hand)
class(hand)

## Attributes

attributes(die)

### Names

names(die)
names(die) <- c("one", "two", "three", "four", "five", "six")
names(die)

die

attributes(die)

die + 1

names(die) <- c("uno", "dos", "tres", "cuatro", "cinco", "seis")
names(die) <- NULL
die

### Dim

dim(die) <- c(2, 3)
die
typeof(die)

dim(die) <- c(3, 2)
die

dim(die) <- c(1,2,3)
die

### Matrices

m <- matrix(die, nrow = 2)
m

m <- matrix(die, nrow = 2, byrow = T)
m
?matrix

## Arrays

ar <- array(c(11:14, 21:24, 31:34), dim = c(2, 2, 3))
ar

### Exercise

cards <- matrix(c("ace", "king", "queen", "jack", "ten", rep("spades", 5)), nrow = 5)
cards

hand1 <- c("ace", "king", "queen", "jack", "ten", "spades", "spades", "spades", "spades", "spades")
matrix(hand1, nrow = 5)
matrix(hand1, ncol = 2)
dim(hand1) <- c(5, 2)
hand1

hand2 <- c("ace", "spades", "king", "spades", "queen", "spades", "jack", "spades", "ten", "spades")
matrix(hand2, nrow = 5, byrow = T)
matrix(hand2, ncol = 2, byrow = T)

## Class

dim(die) <- c(2, 3)
typeof(die)

class(die)

attributes(die)
dim(die) <- NULL
attributes(die)
die

class("Hello")
class(5)
class(5L)

### Dates and Times

now <- Sys.time()
now

typeof(now)
class(now)

unclass(now)

mil <- 1e6
mil

class(mil) <- c("POSIXct", "POSIXt")
mil

### Factors

gender <- factor(c("male", "female", "female", "male"))
typeof(gender)

attributes(gender)

unclass(gender)

gender

as.character(gender)

card <- c("ace", "hearts", 1)
card

## Coercion

sum(c(TRUE, TRUE, FALSE, FALSE))
mean(c(TRUE, TRUE, FALSE, FALSE))

as.character(1)
as.logical(1)
as.numeric(F)

## Lists

list1 <- list(100:130, "R", list(TRUE, FALSE))
list1

card <- list("ace", "hearts", 1)
card

## Data Frames

df <- data.frame(face = c("ace", "two", "six"),
                 suit = c("clubs", "clubs", "clubs"),
                 value = c(1, 2, 3))
df

list(face = "ace", suit = "hearts", value = 1)
c(face = "ace", suit = "hearts", value = "one")

typeof(df)
class(df)

str(df)
df <- data.frame(face = c("ace", "two", "six"),
                 suit = c("clubs", "clubs", "clubs"),
                 value = c(1, 2, 3),
                 stringsAsFactors = F)
df
str(df)

deck <- data.frame(
  face = rep(c("king", "queen", "jack", "ten", "nine", "eight", "seven", "six", "five", "four", "three", "two", "ace"), 4),
  suit = c(rep("spades", 13), rep("clubs", 13), rep("diamonds", 13), rep("hearts", 13)),
  value = rep(seq(13, 1), 4))
deck

## Loading Data

head(deck)

## Saving Data

write.csv(deck, file = "cards.csv", row.names = F)

## Summary


