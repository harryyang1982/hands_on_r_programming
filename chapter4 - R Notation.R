### Selecting Values

### Positive Integers

head(deck)
deck[1, 1]
deck[1, c(1,2,3)]
new <- deck[1, c(1, 2, 3)]

deck[c(1, 1), c(1, 2, 3)]

vec <- c(6, 1, 3, 6, 10, 5)
vec[1:3]

deck[1:2, 1:2]
deck[1:2, 1]
deck[1:2, 1, drop = F]

### Negative Integers

deck[-1, 1:3]
deck[-(2:52), 1:3]

# deck[-c(-1, 1), 1]

### Zero

deck[0, 0]

### Blank Spaces
deck[1,]

### Logical Values

deck[1, c(T, T, F)]
rows <- c(T, rep(F, 51))
deck[rows,]

### Names

deck[1, c("face", "suit", "value")]
deck[, "value"]

## Deal a Card

deal <- function(cards) {
  cards[1,]
}

deal(deck)
deal(deck)
deal(deck)

## Shuffle the Deck
deck2 <- deck[1:52, ]
head(deck2)

deck3 <- deck[c(2, 1, 3:52), ]
head(deck3)

random <- sample(1:52, size = 52)
random

deck4 <- deck[random,]
head(deck4)

shuffle <- function(cards) {
  random <- sample(1:52, size = 52)
  cards[random,]
}
shuffle(deck)
deal(deck)
deck2 <- shuffle(deck)
deal(deck2)

## Dollar Signs and Double Brackets
deck$value
mean(deck$value)
median(deck$value)

lst <- list(numbers = c(1, 2), logical = T, strings = c("a", "b", "c"))
lst
lst[1]
#sum(lst[1])
lst$numbers
sum(lst$numbers)

lst[[1]]
sum(lst[[1]])
lst["numbers"]
lst[["numbers"]]

