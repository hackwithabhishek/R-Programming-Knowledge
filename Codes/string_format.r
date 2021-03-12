str="Data Science" ;str
str1='Data Science';str1
str2="Teacher guide's";str2
str3='Teacher guide"s';str3
str4="Data Science using R"
str5='Data Science using python'

paste("Hello","World",sep="$")
paste(str1,str2,str3,str4,str5,sep=" ")
paste(c("something","go's","wrong"),"in LPU",sep="+",collapse="#")

format(78.5632892165,digits=5,nsmall=4)
format(c(1,-14.63,78.5632892165),scientific=T)
format(c(1,-14.63,78.5632892165),nsmall=5)
format(c(1,-14.63,78.5632892165),width=10)
format(6,width=12,justify="l")
format(6)
format("Hello",width=8,justify="r")
