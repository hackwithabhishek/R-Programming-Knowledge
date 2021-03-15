(mat <- matrix(1:6,nrow=3))
class(mat)
typeof(mat)

attributes(mat)
#no of rows n cols
dim(mat)
# total no of items
length(mat)
# assigning names to rows n cols
(mat1 <- matrix(1:9, nrow=3,ncol=3,byrow= TRUE,
                dimnames = list(c("R1","R2","R3"), 
                                c("C1","C2","C3"))))

#row names from matrix
rownames(mat1)
colnames(mat1)
colnames(mat1)<- c("col1","col2","col3")

# assign colnames or rownames after creating matrix
rownames(mat) <- c("Rw1","Rw2","Rw3")
mat
rownames(mat)
colnames(mat)<- c("Cw1","Cw2")
colnames(mat)

# Accessing elements of matrix
mat1
mat1[,]
mat1[,1:2]
mat1[3,3]
mat1[c(1,3),]
mat1[c(1,3),2]
mat1[1,3]

# matrix manipulation 
(m1 <- matrix(c(4,-10,9,5,6,8),nrow=2,byrow = T)) 
(m2 <- matrix(10:15, nrow=2))
#size of matrix should same
(add <- m1 + m2 ) 
(div <- m1 / m2)
(sub <- m1 - m2)
#transpose of matrix
(m4=t(m1))

# no.of col for mat 1 = no.of row for mat 2
m1 # dim 2 3 no of col =3
m4 # dim 3 2 no of row = 3
m1 %*% m4
 
 
 