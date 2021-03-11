# Basics Of Data Frame
S.No = 1:5
df <- data.frame("S.No"=S.No,
                 "Name"=c("john","Merry","Joseph","Mohan","Rihanna"),
                 "Age"=c(32,26,20,45,26),
                 "Start-Date"=as.Date(c("2012-01-01","2013-09,32","2014-11-15","2014-05,11","2015-03-27")))
str(df) 

# total row
nrow(df)
#total column
length(df)
dim(df)
summary(df)
names(df)
str(df1)
df <- data.frame("S.No"=S.No,
                 "Name"=c("john","Merry","Joseph","Mohan","Rihanna"),
                 "Age"=c(32,26,20,45,26),
                 "Start_Date"=as.Date(c("2012-01-01","2013-09,32","2014-11-15","2014-05,11","2015-03-27")),
                 stringsAsFactors = T)
df
#how to acces data
#use either [.[[ or$ operator to access cols of df
df["Name"]
df[["Name"]]
df$Name
df[2]
df[[2]]
#df$2 #error
df["Name"][2] #error
df[["Name"]][2]
df$Start_Date[5]
#error
df[2][2]  #should be[[
df["Name"][2] #should be [[

df$Start_Date[5]
df[2,2]
df[,2]
df[c(1,3),]
df[3:5,c(1,4)]
df[,-3]

install.packages("tibble")

dept <- c("IT","HR","IT","Finance","Management")
df$Dept <- dept
df
df$Department <- dept
df
#remove column
df<-df[,-5]
df
df$Department <- NULL
df

# add col is using cbind function
emp_id=101:105
emp_id
df <- cbind(df,emp_id)
df$emp_id <-NULL
df
df <- cbind(emp_id,df)
df
df$emp_id <-NULL
# adding col in between using cbind
df <- cbind(df[,1:3],emp_id,df[,4:5])
df

# add col using tibble library
library(tibble)
df3 <- data.frame(x=1:3,y=5:7,z=10:12)
df3
df3 <- add_column(df3,s=11:13,.before="y")
df3
df3 <- add_column(df3,s=11:13,.before=2)
df3$s.1 <- NULL
df3

#bind two df
df <- data.frame("S.No"=6:8,
                  "Name"=c("john","Merry","Joseph"),
                  "Age"=c(32,26,20),
                  "Start_Date"=as.Date(c("2012-01-01","2013-09-30","2014-11-15")),
                  stringsAsFactors = T)

df4 <- data.frame("S.No"=6:8,
                 "Name"=c("john","Merry","Joseph"),
                 "Age"=c(32,26,20),
                 "Start_Date"=as.Date(c("2012-01-01","2013-09-30","2014-11-15")),
                 stringsAsFactors = T)
df4

df5<-rbind(df,df4)
df5
# add row only
df6 <- data.frame("S.No"=9,"Name"="Abhi","Age"=56,"Start_Date"=as.Date("2014-02-01"))
df6
#df5 <- rbind(df5,c(9,"Abhi",56,as.Date("2014-02-01")))
rbind(df5,df6)

#error df5[9:10,1:6] <-NULL
df5<-df5[-9:-10,]
df5
