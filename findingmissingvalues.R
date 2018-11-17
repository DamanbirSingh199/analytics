# Missing values

x = c(NA, 1, NA, 2)
is.na(x)
mean(x)
mean(x, na.rm=T)#remove missing values so that mean can be calculated
x[is.na(x)] = mean(x, na.rm=T)#giving mean marks to missing values
x
sum(is.na(x))#sum function counts the trues only
mean(x)

x1 =c(1,4,7,8,7)
sum(x1 >=6)
length(x1|x1 >=6)

x2 = rnorm(100000, mean=50, sd=5)
length(x2)
posn=sample(100000, size=30)
x2[posn] = NA
sum(is.na(x2))


library(VIM)

head(sleep)
dim(sleep)
complete.cases(sleep)
sum(complete.cases(sleep))
sum(!complete.cases(sleep))#Boolean logic
sleep[complete.cases(sleep),]
sleep[!complete.cases(sleep),]
colSums(is.na(sleep))
rowSums(is.na(sleep))
