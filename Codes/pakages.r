data()
.libPaths()
# =currently loaded pakages in r environment 
search()
#install new pakages 
install.packages("ggplot2")
library(dplyr)
library(ggplot2)
search()
require(dplyr)
?dplyr
?ggplot2

# read text/csv/data
d1=read.csv("C:\\Users\\Abhishek Mishra\\Desktop\\Dataset\\OLYMPICS SUMMER.csv")
View(d1)
d2=read.csv("C:/Users/Abhishek Mishra/Desktop/Dataset/OLYMPICS SUMMER.csv")
View(d2)
d3=read.csv("C:/Users/Abhishek Mishra/Desktop/Dataset/sample.txt")
View(d3)

d3=read.csv("C:/Users/Abhishek Mishra/Desktop/Dataset/sample.txt",sep=";")
View(d3)

d4=read.csv(file.choose(),sep="$",header = T)
d4


#read data from user
data=readline()
data
data1=readline("Enter String:-")
data1

#default readline method reads data in character form 

no1 =as.integer(readline("enter no 1 :- "))
no2 =as.integer(readline("enter no 2 :- "))
no1+no2

# scan function
# allow you to read multiple item from the user 
x=scan()
#press enter to end execution of scan function
x
class(x)
x[1]+x[2]
sum(x)
#scan bydefault work with integer data
#you can pass character function to read character 
y=scan(what=character())
y

z=scan(file.choose(),what=" ")
z
#how to write data in external file
df=data.frame("ID"=c(1,10,15),State=c("PB","CG","UP"))
df
write.csv(file="exe.csv",df,row.names=F)
