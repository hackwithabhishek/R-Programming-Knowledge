#dplyr
#load package
#prefer to use library instead of require
library(dplyr)

#or
require(dplyr)

?dplyr
### verbs of dplyr
# select() picks variables based on their name
# mutate() add new variable that are function of existing variables
# filter()picks cases based on thier value
# summarise() reduce multiple values down to a single summary
# arrarnge() changes the ordering of the rows
# group_by() allow for group operation in the "split-apply-combine" concept

# %>%
View(iris)
str(iris)
df <- iris
summary(iris)
df %>% filter(Sepal.Length>5 & Species == "setosa")%>%
  select(Sepal.Length,Petal.Length,Species)

df %>% select(Sepal.Length,Petal.Length,Species) %>%
  filter(Sepal.Length>5 & Species =="setosa")

#error
df %>% select(Sepal.Length,Petal.Length,Species) %>%
  filter(Sepal.Width>5 & Species =="setosa")


df %>% select(Sepal.Length,Petal.Length,Species) %>%
  filter(Sepal.Length>5 & Species =="setosa")%>%
  mutate(SL=Sepal.Length*5)

df %>% select(Sepal.Length,Petal.Length,Species) %>%
  filter(Sepal.Length>5 & Species =="setosa")%>%
  mutate(SL=Sepal.Length*Petal.Length)

#summarise
df %>% select(Sepal.Length,Petal.Length,Species) %>%
  filter(Sepal.Length>5 & Species =="setosa")%>%
  mutate(SL=Sepal.Length*5)%>%
  summarise(MeanSL=mean(Sepal.Length),MeanPL=mean(Petal.Length),
            MaxSL=max(Sepal.Length))