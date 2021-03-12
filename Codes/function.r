f5<-function(no){
  if(no>0){
    print("positive")
  }else if(no<0){
    print("negative")
  }else{
    print("zero")
  }
}
f5(0)
f6<-function(){
  l1=list("red","orange","green")
  l1
}
f6()
cat("select operator","\n","1-Add","\n","2-sub","\n",
    "3-Mul","\n","4-div","\n","5-Modulus")
opr=as.integer(readline(prompt="Enter value between 1 to 5: "))
no1=as.integer(readline(prompt="Enter first number: "))
no2=as.integer(readline(prompt="Enter second number: "))
opr_select=switch(opr,"+","-","*","/","%%")
opr_select
result=switch(opr,add(no1,no2),sub(no1,no2),
              mul(no1,no2),div(no1,no2),mod(no1,no2))
cat("Exp is: "no1,opr_select,no2,
    "and the result is: ",result)
add<-function(no1,no2){
  return(no1+no2)
}
sub<-function(no1,no2){
  return(no1-no2)
}
mul<-function(no1,no2){
  return(no1*no2)
}
div<-function(no1,no2){
  return(no1/no2)
}
mod<-function(no1,no2){
  return(no1%%no1)
}