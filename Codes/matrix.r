a=array(c(1,5,8,7))
a
a1=array(1:15,dim=c(3,4,3))
a1
v1<-c(1,5,7,45,78,98)
v2<-c(10,12,15,18,16,11)
(a2<-array(c(v1,v2),dim=c(3,3,4),
           dimnames=list(c("R1","R2","R3"),
                         c("C1","C2","C3"),
                         c("M1","M2","M3","M4"))))

#access element
a1
a1[c(1,3),1:2,2]






a1[,,3]
a1[1:2,,]
a1[c(1,3),1:2,c(1,3)]
#create 2 vector of diff length\
v3<-c(10,20,40)
v4<-c(4,-5,6,7,10,12,10,-2,1)
(a3<-array(c(v3,v4),dim=c(3,3,2)))