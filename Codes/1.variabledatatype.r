int main()
{
int a; #men 2,4
float b; #men 4
double c; #men 8
char d; #men 1
  
  cin>>a;
  cout<<a;
  getch();
}
# R programming
#no data type
a=12
class(a)

b="Hello"
class(b)

c="this is demo class"
class(c)
typeof(c)

no1=15L
class(no1)
typeof(no1)

no2=18.63
class(no2)
typeof(no2)

no3=85
class(no3)
typeof(no3)

no4=15.25L
class(no4)
typeof(no4)


#assignment operator
#"=" , "<-" , "->"
var1=85
#85=var2  can't use = as right hand operator
var2<-25
100->var3

#datatypes in R Programming 
#vectors
#list
#array
#matrices
#data frames
#factors

#Basic Datatypes
#logical data type
c(10,50,205)-> var2

v1=TRUE
v1
class(v1)

#Numeric 
v2=23.1 
class(v2)

#Integer
v3=5L
class(v3)

#complex
v4=5+2i
class(complex)

#character
v5="12"
class(v5)

#Raw
v6=charToRaw("Hello")
v6
class(v6)

#to convert raw 
v7=rawToChar(v6)
v7
class(v7)

#vectors c()
vec1<-c(10,20,52,86,36)
vec1
class(vec1)

vec2<-c(10,12.53,"Hello")
vec2
class(vec2)

vec3<-c(10+0i,12.53,58)
vec3
class(vec3)

vec4<-c(10,10L,12.53,58)
vec4
class(vec4)

vec5=c(1,2,3,4,5,6,7,8,9,10,12,13,14,15,16)
vec6=1:50
vec5
vec6
class(vec5)
class(vec6)

#but two function is not requried
#it will lead to take more time to
#execute (about below function)
vec7=c(1:50) 
vec7
class(vec7)

#coerced function
vec8=0.5:10.5
vec8
class(vec8)

#list
numeric ->
1.integer "L"
2.decimal
l1=list(10,12.53,"Hello")
l1
l1[3]

l2=list(c(10,20,15),85.63,c("a","Hello","Hi"),charToRaw("savleen"))
l2
class(l2)
typeof(l2[[3]])
l2[[4]]
 
#matrix
m=matrix(c(12,5,10),nrow=3,ncol=3)
m
#warming not error
m1=matrix(c(10,2),nrow=3,ncol=3)
m1
m2=matrix(c(10,2),nrow=2,ncol=3)
m2
m3=matrix(c(10,2),nrow=2,ncol=3,byrow=T)
m3

#arrays
a=array(c(10,12,15),dim=c(3,2,4))
a
a1=array(1:25,dim=c(3,2,4))
a1
a2=array(1:25,dim=c(5,3,2))
a2

#factor
color=c('red','yellow','green','blue','green','red','Red')
f1=factor(color)
f1

f=factor(c("Orange","Grapes","Mango","Grapes","orage","Mango"))
f

f2=factor(c(1,12,13,15,18,6))
f2
gender=c("M","F","M","F","M","F","M","M","M")
gender
f3=factor(gender)
f3

#dataframe
d=data.frame(Regno=c(1,2,3,4) ,
             Name=c("amit","ron","raj","rits"),
             gender=c("m","m","m","f"),
             age=c(19,20,23,25))
d

vec =c(12,13,14)
print(vec)
print(vec,10)
print("Vactor value is",vec)
cat("vector value is ",vec,"\n","this is single data type in r")

#operator in R

v1=c(12,15,18,20)
v2=c(10,20,30,40,50)
v1+v2
v1-v2
v1*v2
v1/v2

v1=c(12,15,18,20)
v2=c(10,20,30,40)
v1+v2
v1-v2
v1*v2
v1/v2
v1%%v2#remainder
v1%/%v2#quotient
v1==v2#complete division
v1!=v2
# -,*,/
v1=c(12,0,F,20)
v2=c(2,1,3,2)
v1|v2
!v1
v3=c(0,1,0,1)
v4=c(1,1,0,1)
v3&v4
v3|v4

#Decision stmt
x=c(8,20,"ok","TU")
if("LPU"%in% x){
  print("Value Found")
}else if("lpu" %in% x){
  print("Value 2 Found")
}else{
  
}
a <<- 50 ; a #left
80 ->> b; b #right
#misc operator
c=0.1:15.5;c
# %in%
x=c(8,20,"ok","TU")
test=25

test %in% c(27,18,45,60)
#%8% matrix multiplication
m=matrix(c(2,3,4,5),nrow=2,ncol=2)
m
dim(m)
m1=t(m)
dim(m1)
m%*%m1

#decision stmt
x=c(8,20,"ok","TU")
str(x)

if("LPU" %in% x){
  print("value found")
}

#switch stmt
#ssyntax :- switch(expr,casel,case2,case3,....)
switch(3,"Hello","LPU","Welcome","Great")
switch(10,"Hello","LPU","Welcome","Great")
#ex
#repeat loop while loop for loop
#syntax:
repeat{
  print(vec)
  cnt=cnt+1
  if(cnt>=6){
    break
  }
  
}

#missing some code of one class

#Accessing element of matrix
mat1
mat1[,]
mat1[,1:2]
mat1[3,3]
mat1[c(1,3),]
mat1[c(1,3),2]
mat1[1,3]

#matrix manipulation
(m1<-matrix(c(4,-10,9,5,6,8),nrow=2,byrow=T))
(m2<-matrix(10:15,nrow=2))

#size of matrix should same
(add<-m1+m2)
(div<-m1/m2)
(sub<-m1-m2)

#transverse of matrix
(m4=t(m1))

#no of col for mat1 should be equal to no of row for mat2
m1*m4 #m1 dim 2 3 #m4 dim 3 2 

m1*m2 #wrong way to do matrix multiplication
m1 #dim 2 3 no of col=3
m4 #dim 3 2 no of row=3
m1%*%m4