(a1 <- array(1:15,dim= c(3,4,3)))
v1 <- c(1,5,7,45,78,98)
v2 <- c(10,12,15,18,16,11)
(a2 <- array(c(v1,v2), dim = c(3,3,4),
      dimnames= list(c("R1","R2","R3"),c("C1","C2","C3"),
                     c("M1","M2","M3","M4"))))
a2[2,3,4]
a2[,,3]
a2[c(1,3),1:2,c(2,4)]

# create 2 vectors of diff length
v3 <- c(10,20,40)
v4 <- c(4,-5,6,7,10,12,10,-2,1)

(a3 <- array(c(v3,v4), dim =c(3,3,2)))

# create matrices from a2 and a3
(mat1 <- a2[,,2])
(mat2 <- a3[,,2])
(mat3 <- a2[1:2,,1:2])
a3
(mat3+a3)
#addition 
(res <- mat1+mat2)
(a2+a3) # a2 dim(3,3,4) # a3 dim(3,3,2)
# calculations across array elements
#apply function apply(x, margin, fun) 
#margin =1 means row, 2 means col
apply(a3,1,sum) # for row margin =1
apply(a3,2,sum) # for col margin =2
a3
#or
m1 <- a3[,,1]
m2 <- a3[,,2]
add= m1+m2
cat(sum(add[1,]),sum(add[2,]),sum(add[3,]))
