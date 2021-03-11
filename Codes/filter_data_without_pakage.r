str(Titanic)
titanic=data.frame(Titanic)
str(titanic)
#filter data where survived = Yes
#error-->filter(titanic,Survived=="Yes")
(df <- titanic[ which(titanic$Survived == "Yes"),])
df
(df1 <- titanic[which(titanic$Sex == "Male" | titanic$Survived == "Yes"),])
df1
#https://youtu.be/fbsNhipRK3Y https://youtu.be/1UJ2KUzIOKw

#attach
attach(titanic)
(df <- titanic[which(Survived == "Yes"),])
(df <- titanic[which(Survived == "Yes",c(1,3,5)),])
df
View(mtcars)
mpg
mtcars$mpg
attach(mtcars)
mpg
detach(mtcars)
mpg


#using subset method for filter data
df2 <- subset(titanic,Survived == "Yes" & Sex == "Male")
df2

#limit the set of column
df3 <- subset(titanic,Survived == "Yes" & Sex == "Male",select=c(1,3,5))
df3

#sample
(x <- sample(1:100)) #random
(x1 <-1:100) # sequence
(x <-sample(50,10)) # replace =F
(x <- sample(2,50,replace=T,prob=c(0.8,0.2)))
(x <- sample(3,50,replace=T,prob=c(0.5,0.3,0.2)))

#rep
(y <- rep(1:5)) #times=1
(y <- rep(c("a","d"),4,5))
(y <- rep(c("a","d"),times=4,len=5))
(y <- rep(c("a","d"),times=4,each=5,len=50))

