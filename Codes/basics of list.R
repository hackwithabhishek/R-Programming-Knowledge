#Naming the elements of list
x1 <- list("a" = 2.5, "b" = TRUE, "c" = 1:3, "d"="Hello",
           "e"= 54:60)
x1
# structure
str(x1)
x1$c
x1$c[2]
x1[4]
x1[[5]][4]
x <- list(2.5,TRUE,1:3,"Hello",54:60,5+8i)
x
# give names to elements of list
names(x) <- c("no1","log","Seq1","str","seq2")
x
#adding data in list
x[[7]] <- "New data"
x
# remove data from a list
x[6]<- NULL
x
#update the existing data
x$seq1 <- 20:25
x[[8]] <- c(20,30,80)
x[[8]][3]<- 800
# exclude index 2
x[-2]
# index value which is not there will be replicated by 
# seq of logical vector
x
x[c(T,F)] #x[c(T,F,T,F,T,F,T,F)]

# using character vector
x[c("no1","str")]  # minus will not work with char vector
x[-c(1,3)] # exclude 1st and 3rd index value


typeof(x["str"]) # single [ returns a list
x[["str"]]
typeof(x[["str"]]) # char [[ returns the content
x$Seq1
x[[3]]
x[["Seq1"]] # same result as of above

# create list
l1 <- list("s.no."=1:3,"cost"=c("30/Kg","50/Kg","100/Kg"))
l2 <- list("Fruits"= c("Orange","Banana","Apple"))

#merge list
l3 <- c(l1,l2)
l3



list1 <- list(1:25)
typeof(list1)
list2 <- list(51:75)
list1+list2
#convert list to vector
v1 <- unlist(list1)
v1
typeof(v1)
v2 <- unlist(list2)
 v1+v2
 v1
 