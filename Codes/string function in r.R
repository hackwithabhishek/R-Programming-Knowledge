str <- 'Data Science'
str
str1 <- "Data Science"
str1
str2 <- "Data Science's is specialization in CSE"
str2
str3 <- 'Machine learning " is used to train machines'
str3
str4 <- 'Machine learning '

# string manipulation
x= "Data"
y= "Science"
z = "Machine Learning"
v = c("something","go's", "wrong", "now correct")
paste(x,y) # sep is space
paste(v,sep=" ",collapse="%")


# format  o/p in char or string
format(c(78.1456789,45.1236987,56.123889), digit=4)

format(c(78.1456789,45.1236987,56.123889,8), scientific = T)

format(14.523632578,nsmall = 7) # after decimal number of digits 5

format(10)

format("LPU", width= 11, justify = "r")

# counting the number of characters
x=c("hello","LPU","Smart")
x
length(x) # no of attr
nchar(x) # no of characters including spaces in a string
nchar("Join class on time")
y= "Join class on time"
x = toupper(x)
x
tolower(x)

substring(y,6,10) # substring(text,first,last)

substring("Welcome to Data Science Course",12,23)
