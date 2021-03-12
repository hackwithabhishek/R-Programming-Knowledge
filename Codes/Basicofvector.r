x<-c(7,8,1,4,10,20,30,8,9,6);x
y<-1:10;y
z<--3.5:8;z

typeof(x)
class(x)
typeof(z)
t=seq(17);t
r=seq(10,23,by=2);r
s=seq(10,15);s
s=seq(15,by=-3);s
class(t)
typeof(t)


#using position []
x<-c(7,8,1,4,10,20,30,8,9,6)
x[3]
x[c(1,3,8,10,15)]
x[4:8]

#logical indexing
x<-c(7,8,1,4,10,20,30,8,9,6);x #total value are 10
x[c(T,F,T,T,F,F,T)] #passed logical index for 7

x<-c(7,8,1,4,10,20,30,8,9,6);x
x[c(T,F,F)]
x[15]<-55
x
rm(x)
x<-c(7,8,1,4,10,20,30,8,9,6);x
x[-5]
x[c(-5.-7,-9)]
x[-c(5,7,9)]
x[c(10,7,4)]

#using 0/1 Indexing
x<-c(7,8,1,4,10,20,30,8,9,6);x
x[c(0,1,0,0,1,0,1,1,1,1)]
x[c(0,0,0,0,0,1)]

#vector manipulation
v1<-c(7,8,9,4,56,12) ;v1
v2<-c(10,20,30,58,78,15);v2

addvec<-v1+v2;addvec
subvec<-v1-v2;subvec
mulvec<-v1*v2;mulvec
(divvec<-v2/v1)
(modvec<-v2%%v1) #remainder
(quovec<-v2%/%v1)

#vector element recycling
#when my vectors are of unequal length
v3<-c(10,40,56,95,78,45,32)
v4<-c(6,20) #len2
v3+v4

#vector sorting
(sortvec<-sort(v3,decreasing=T))
