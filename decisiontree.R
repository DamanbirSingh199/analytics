# Decision Tree - Classification
#we want predict for combination of input variables, is a person likely to servive or not

#import data from online site
path = 'https://raw.githubusercontent.com/thomaspernet/data_csv_r/master/data/titanic_csv.csv'
titanic <-read.csv(path)
head(titanic)
names(titanic)
data = titanic[,c(2,3,5,6,7)]  #select few columns only
head(data)

#load libraries
library(rpart)#For creating decision tree, means recursive partitioning
library(rpart.plot)#For plotting the tree
library(dplyr)
        
dim(data)

#Decision Tree
fit <- rpart(survived~., data = data, method = 'class')#select all variables other than survived
fit
rpart.plot(fit, extra = 106, cex=.8,nn=T)  #plot

printcp(fit) #select complexity parameter (pruning the tree)
#will see CP- complexity parameter has to be least
#loss means what is being predicted (in case 0, then those with 1) didn't happen
prunetree2 = prune(fit, cp=.014)
rpart.plot(prunetree2, cex=.8,nn=T)
prunetree2
#In the tree that comes, yval is the mode. 0 in this case, so most of the people didn't survive
#First thing selected is gender, because it judged it to be the most important. Uses Gni Index or other methods
nrow(data)
#Predict class category or probabilities
(testdata = sample_n(data,2))
predict(prunetree2, newdata=testdata, type='class')
predict(prunetree2, newdata=testdata, type='prob')
#This is a classification tree, not as accurate as decision tree
#Use decision trees for predicting
#customer is likely to buy a product or not with probabilities
#customer is likely to default on payment or not with probabilities
#Student is likely to get selected, cricket team likely to win etc

#Imp steps
#select columns for prediction
#load libraries, create model
#prune the tree with cp value
#plot the graph
#predict for new cases