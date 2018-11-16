#vectors ----

(x1 <- 1:20)

x2=c(1,2,13,4,5)
class(x2)
(x3= letters(1:10))
letters (1:10)
(x3=c("a","ABC"))
class(x3)
x3=10:1  
x3
LETTERS
LETTERS[1:10]
(x4=c("TRUE","FALSE","T","F"))
class(x4)
x5=(4L:8L)
x5
class(x5)
(x6 = seq(0,100,by=5))

x6
x6(9)
x6[20]
seq(1,100,9)
ls()
x6[x6>10  | x6<20]

length(x6)
x6[-(length(x6)-1)]
?c
x6(9)


(x6 = sample(1:50))
sort(x6)
sort(x6, decreasing = T)
rev(x6)
sum(x6[x6>30 & x6 >40])
(x= -3:2)
x < 0
x2
x6
x6[2]=99
x6
x6[2:10]=99
x6
x6[x6>30 & x6<40]= 999
x6
x7=(x6[1:4])
x7
x6
(x = seq(1,5, length.out = 15))

x = NULL
x
x
?rnorm
?distribution
(x= rnorm(1003))
plot(x)
abline(v=mean(x),h=0.4)

hist(x, freq= F)
lines(density(x1))


#Matrix -----     
111:100
length(111:100)

(m1= matrix(111:100, nrow=4))

(m2= matrix(1:20, ncol=4, byrow= T))
m1[1,1]
m2[1,1]
m1[1]
m1[1,]
m2[1,2:4]
m2[,-c(1,3)]
plot(m2[,-c(1,3)])
m1[m1> 105 & m1<120]
paste("C",1:100, sep="9")
(colnames(m1) = paste("C",1:3))
m1
(rownames(m1) = paste ("Row",1:4))
m1
plot(m1)
attributes(m1)
m1[c("Row 1", "Row 3"),'C 1']
m1
colSums(m1,m2)
cbind(m1,m2)
rbind(m1,m2)

t(m1) #transpose
sweep(m1, MARGIN=1, STATS= c(3,3,4,5), FUN="+") #ROW WISE
sweep(m1, MARGIN=2, STATS= c(3,3,3), FUN="-") #COL WISE
m1
?addmargins

addmargins(m1,c(1,2),mean)
addmargins(m1,c(1,2), list(mean, sum), list(mean, sum))


#DataFrame----
#create Vectors to be combned into DF

(rollno=1:30)
set.seed(1234)
(sname=paste('student',1:30,sep=''))
gender=sample(c('M',"F"),size=300,replace=T, prob=c(.4,.6))
(marks1 = floor(rnorm(30, mean=50,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'),size=30, replace=T, prob=c(.5,.5)))
rollno;sname;gender
marks1;marks2;course

df1= data.frame(rollno, sname, gender, marks1,marks2, course, stringsAsFactors=F)
str(df1)#structure of DF
head(df1)#top 6 rows
head(df1,n=3)#top 3 rows
tail(df1)#last 6 rows
class(df1)#DF
summary(df1)
df1

df1$gender= factor(df1$gender)
df1$course= factor(df1$course)
df1$gender
df1
df1[,-c(2,4)]
df1[1:10,]#select rows, all columns
df1[1:5,1:3]

#as per conditions
df1[marks1>50 & gender=="F", c("sname","rollno")]
names(df1)
dim(df1)
aggregate(df1$marks1, by=list(df1$gender,df1$course), FUN=sum)
aggregate(marks ~ gender, data=df1, FUN=max)
aggregate(cbind(marks1, marks2) ~ gender,data=df1, FUN=max)

summary(df1)
table(gender)
prop.table((table(gender)))

x=c(1.4,2.5)
floor(x)
ceiling(x)
