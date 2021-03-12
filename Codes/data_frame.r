#basics of data frame
S.No=1:5
df<-data.frame("S.no"=S.No,
               "Name"=c("John","Marry","Joseph","Mohan","Rihanna"),
               "Age"=c(32,26,20,43,26))
str(df)
df1<-data.frame("S.no"=S.No,
               "Name"=c("John","Marry","Joseph","Mohan","Rihanna"),
                        "Age"=c(32,26,20,43,26),
               "Start_date"=as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")))
str(df1)
df1
#total noof rows
nrow(df1)
#total no. of cols
length(df1)
dim(df1)
names(df1)

df2<-data.frame("S.no"=S.No,
                "Name"=c("John","Marry","Joseph","Mohan","Rihanna"),
                "Age"=c(32,26,20,43,26),
                "Start_date"=as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")),
                stringsAsFactors = T)

#How to Acces data
#use either [,[[ or $ operator to acces col of df.
df1["Nme"]#op will in the form df
df1[["Nme"]] #op will be in the  from vector
df1$Name
df[2]
df1[[2]]
df1[["Name"]][2]
df1$Start_data[2]
#error
df1[2][2]
df1["Nme"][2]
df1$Start_date[2]
df1[2,2]
df1[,2]
df1[c(1,3),]
df1[3:5,c(1,4)]
df1[.-3]

#install .packages("tibble")
#add col
dept<-c("IT","HR","IT","Finance","Management")
df1$Dept<-dept

#remove col from 
df1<-df1[,-5]
df1$Dept<-NULL
df1

#add col is using cbind funtion
emp_id=101:105
df1<-cbind(df1,emp_id)
df1