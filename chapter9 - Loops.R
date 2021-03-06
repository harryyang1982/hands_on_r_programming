source("chapter8 - S3.R")

### Expected Values

die

### expand.grid

rolls <- expand.grid(die, die)
expand.grid(die, die, die)

rolls$value <- rolls$Var1 + rolls$Var2
rolls
head(rolls, 3)

prob <- c("1" = 1/8, "2" = 1/8, "3" = 1/8, "4" = 1/8, "5" = 1/8, "6" = 3/8)
prob

rolls$Var1
prob[rolls$Var1]
rolls$prob1 <- prob[rolls$Var1]
rolls$prob2 <- prob[rolls$Var2]
rolls$prob <- rolls$prob1 * rolls$prob2
rolls

head(rolls, 3)
sum(rolls$value * rolls$prob)

wheels <- c("DD", "7", "BBB", "BB", "B", "C", "0")
combos <- expand.grid(wheels, wheels, wheels, stringsAsFactors = F)
combos

get_symbols

prob <- c("DD" = 0.03, "7" = 0.03, "BBB" = 0.06, "BB" = 0.1, "B" = 0.25, "C" = 0.01, "0" = 0.52)
prob
combos$prob1 <- prob[combos$Var1]
combos$prob2 <- prob[combos$Var2]
combos$prob3 <- prob[combos$Var3]
combos$prob <- combos$prob1 * combos$prob2 * combos$prob3

head(combos, 3)
sum(combos$prob)
symbols <- c(combos[1, 1], combos[1, 2], combos[1, 3])
symbols
score(symbols)

### for Loops

for (value in c("My", "first", "for", "loop")) {
  print("one run")
}

for (value in c("My", "second", "for", "loop")) {
  print(value)
}

for (word in c("My", "second", "for", "loop")) {
  print(word)
}

for (string in c("My", "second", "for", "loop")) {
  print(string)
}
for (i in c("My", "second", "for", "loop")) {
  print(i)
}

for (value in c("My", "second", "for", "loop")) {
  value
}

chars <- vector(length = 4)
chars

words <- c("My", "fourth", "for", "loop")
for (i in 1:4) {
  chars[i] <- words[i]
}
chars

combos$prize <- NA
head(combos, 3)
for (i in 1:nrow(combos)) {
  symbols <- c(combos[i, 1], combos[i, 2], combos[i, 3])
  combos$prize[i] <- score(symbols)
}
combos
head(combos, 3)

sum(combos$prize * combos$prob)

score <- function(symbols) {
  diamonds <- sum(symbols == "DD")
  cherries <- sum(symbols == "C")
  
  # identify case
  # since diamonds are wild, only nondiamonds
  # matter for three of a kind and all bars
  slots <- symbols[symbols != "DD"]
  same <- length(unique(slots)) == 1
  bars <- slots %in% c("B", "BB", "BBB")
  # same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
  # bars <- symbols %in% c("B", "BB", "BBB")
  
  # get prize
  if (diamonds == 3) {
    prize <- 100
  } else if (same) {
    payouts <- c("7" = 80, "BBB" = 40, "BB" = 25, "B" = 10, "C" = 10, "0" = 0)
    # payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, "B" = 10, "C" = 10, "0" = 0)
    prize <- unname(payouts[slots[1]])
    # prize <- unname(payouts[symbols[1]])
  } else if (all(bars)) {
    prize <- 5
  } else if (cherries > 0) {
    # diamonds count as cherries
    # so long as there is one real cherry
    prize <- c(0, 2, 5)[cherries + diamonds + 1]
  } else {
    prize <- 0
    # # count cherries
    # cherries <- sum(symbols == "C")
    # prize <- c(0, 2, 5)[cherries + 1]
  }
  
  # adjust for diamonds
  prize * 2 ^ diamonds
}

for (i in 1:nrow(combos)) {
  symbols <- c(combos[i, 1], combos[i, 2], combos[i, 3])
  combos$prize[i] <- score(symbols)
}
sum(combos$prize * combos$prob)

### while Loops

# while (condition) {
#   code
# }

plays_till_broke <- function(start_with) {
  cash <- start_with
  n <- 0
  while (cash > 0) {
    cash <- cash - 1 + play()
    n <- n + 1
  }
  n
}
plays_till_broke(100)

### repeat Loops

plays_till_broke <- function(start_with) {
  cash <- start_with
  n <- 0
  repeat {
    cash <- cash - 1 + play()
    n <- n + 1
    if (cash <= 0) {
      break
    }
  }
  n
}
plays_till_broke(100)
