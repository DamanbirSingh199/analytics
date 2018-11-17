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
df1$gender= factor(df1$gender)
df1$course= factor(df1$course)

library(dplyr)
df1 %>% group_by(gender) %>% summarise(meanM1= mean(marks1), MeanM2 = mean(marks2), maxM2= max(marks2))

summarise(mtcars, meanmpg = mean(mpg))  
summarise(df1, meanM1 = mean(marks1))

names(mtcars)
summarise(mtcars, sum(am))
table(mtcars$am)
table(mtcars$gear)
table(mtcars$cyl)
table(mtcars$cyl, mtcars$am)
table(mtcars$vs, mtcars$carb, mtcars$am)
xtabs( ~cyl + am + vs, data=mtcars)


mtcars %>% group_by(cyl) %>% summarise(mean(mpg))
mtcars %>% group_by(gear, cyl) %>% summarise(mean(mpg))                                       
mtcars %>% group_by(cyl, gear) %>% summarise(mean(mpg)) %>% arrange(mean(mpg))

arrange(desc(mean(mpg))
        
mtcars %>% select(mpg, wt) %>% head
mtcars %>% select(mpg, wt) %>% slice(c(1,5,6))
mtcars$mpg
mtcars %>% select(mpg, wt) %>% slice(seq(1,32,2))
mtcars %>% filter(mpg > 25 & hp < 60) %>% select(mpg, wt, hp,am)
mtcars %>% sample_n(3)
mtcars %>% sample_frac(.3)
