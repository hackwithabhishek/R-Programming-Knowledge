data()
.library()

#currently loaded packages in r environment 
search()

install.packages("stats")
install.packages("dplyr")
install.packages("ggplot2")

#load package
library(dplyr)
library(ggplot2)
search()
require(dplyr)
?dplyr
library(stats)
?ggplot2

#read text / 

d1=read.csv("G:\\OLYMPICS_SUMMER.csv")
View(d1)

d2=read.csv("G:/OLYMPICS_SUMMER.csv")
View(d2)

d3=read.csv("G:/data.txt" ,sep=";" ,header=("id","Name","sec"))
View(d3)

data=readline()
data
data1=readline("Enter string:- ")

data2=readline("Enter number")
data2


#error
no1=readline("enter no1:- ")
no2=readline("enter no2:- ")
no1+no2

#error
no1=readline("enter no1:- ")
no2=readline("enter no2:- ")
as.integer(no1+no2)

#readline metod read datain character vector by default

#perfect 
no1=as.integer(readline("enter no1:- "))
no2=as.integer(readline("enter no2:- "))
no1+no2


#scan() insert multiple data

x=scan()
x

class(x)
x[1]+x[4]
sum(x)

y=scan()
y=scan(what= character())
y

z=scan("G:\\data.txt",what=" ")
z

df=data.frame("ID"=c(1,10,15),
              state=c("PB","CG","UP"))
df

