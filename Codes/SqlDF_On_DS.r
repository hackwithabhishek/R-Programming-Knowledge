employees <- read.csv(file.choose())
str(employees)
employees$gender=as.factor(employees$gender)
orders <- read.csv(file.choose())
str(orders)

sqldf("select * from employees where gender='m'")

#count by first name
sqldf("select firstname,count(firstname) from employees group by firstname")

#count by first name excluding rudi
sqldf("select firstname,count(firstname) from employees where firstname!='rudi' group by firstname ")

emp_cali = sqldf("select *,
                  CASE 
                  when firstname='solon' then 1
                  when firstname='hila' then 1
                  when firstname='dima' then 1
                  Else 0
                  End cali_emp
                  from employees
                 ")
emp_cali

# sort employees 
emp_cali = sqldf("select *,
                  CASE 
                  when firstname='solon' then 1
                  when firstname='hila' then 1
                  when firstname='dima' then 1
                  Else 0
                  End cali_emp
                  from employees
                  order by cali_emp desc,firstname")
emp_cali


