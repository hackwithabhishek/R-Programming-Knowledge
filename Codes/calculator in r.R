# take input from the user
cat("Select operation:","\n","1-Add \n","2-Subtract \n",
    "3-Multiply \n","4-Divide \n","5-Modulus \n")
choice = as.integer(readline(prompt="Enter choice[1 to 5]: "))
no1 = as.integer(readline(prompt="Enter first number: "))
no2 = as.integer(readline(prompt="Enter second number: "))
opr <- switch(choice,"+","-","*","/")
result <- switch(choice, add(no1, no2), sub(no1, no2),
  mul(no1, no2), div(no1, no2),mod(no1,no2))
cat(no1, opr, no2, "=", result)

# functions
add <- function(x, y) {
  return(x + y)
}
sub <- function(x, y) {
  return(x - y)
}
mul <- function(x, y) {
  return(x * y)
}
div <- function(x, y) {
  return(x / y)
}

mod <- function(x, y) {
  return(x %% y)
}