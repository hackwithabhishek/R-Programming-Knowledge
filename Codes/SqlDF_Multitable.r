library(sqldf)
employees <- read.csv(file.choose())
View(employees)
orders <- read.csv(file.choose())
View(orders)
.libPaths("")
str(employees)
str(orders)
#singleTable Operation

#filter male data from dataset
male_emp <- sqldf("select * from employees where gender == 'm' ")
View(male_emp)

#count by first name 
occ <- sqldf("select firstname, COUNT(firstname) as occ from employees group by firstname")
View(occ)

#Multitable operation

#1 Left Join 
data=sqldf("Select * from employees emp LEFT JOIN orders ord ON emp.id=ord.id ")
View(data)

#2 Right Join
data=sqldf("Select * from orders ord LEFT JOIN employees emp ON emp.id=ord.id ")
View(data)

#3 INNER JOIN
data=sqldf("Select * from orders ord INNER JOIN employees emp where emp.id=ord.id ")
View(data)

data <- sqldf("select * from orders ord,employees emp where emp.id=ord.id")
View(data)

#join orders to employees
# find who is ordering item less than 10 dollar sort the data
# in lowest cost 
data <- sqldf("select firstname,item_cost from 
              orders ord LEFT JOIN employees emp ON  
              emp.id=ord.id where ord.item_cost<10 Order by item_cost")

View(data)

data <- sqldf("select firstname ,quantity_ordered*item_cost as Total_cost from
              orders ord LEFT JOIN employees emp ON emp.id=ord.id 
              where quantity_ordered*item_cost<20 
              order by quantity_ordered*item_cost ")
View(data)

# wnat to analyse whose total lunch cost is <30 dollar


#you want to know whose total luch cost is 30$ 