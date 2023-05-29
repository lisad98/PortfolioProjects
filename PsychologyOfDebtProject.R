install.packages('faraway') #installing package to get dataset debt
library(faraway)
data(debt)

?debt #learning variables of debt

summary(debt) #numerical summaries

colnames <- names(debt)
for(colnum in(1:length(debt)))
{print(paste("Class of", colnames[colnum], "is:",
             class(debt[,colnum])))} #measurement type

View(debt) #debt table

debt$incomegp <- as.factor(debt$incomegp)
debt$house <- as.factor(debt$house)
debt$children <- as.factor(debt$children)
debt$singpar <- as.factor(debt$singpar)
debt$agegp <- as.factor(debt$agegp)
debt$bankacc <- as.factor(debt$bankacc)
debt$bsocacc <- as.factor(debt$bsocacc)
debt$ccarduse <- as.factor(debt$ccarduse)
debt$cigbuy <- as.factor(debt$cigbuy)
debt$xmasbuy <- as.factor(debt$xmasbuy)
#convert into factor

colnames <- names(debt)
for(colnum in(1:length(debt)))
{print(paste("Class of", colnames[colnum], "is:",
             class(debt[,colnum])))} #measurement type

na.omit(debt) #excluding observations
str(debt)

cl.debt <- debt #creating cleaned data set

library("tidyverse") 
library(GGally) #loading required libraries
view(cl.debt)
summary(cl.debt)
str(cl.debt) #creating numerical summary for each column

ggpairs(cl.debt, title = "correlogram with ggpairs()")
ggpairs(cl.debt, columns = 1:6)

rm(debt)
gc()

lmobj.1 <- lm(prodebt ~ locintrn, data=cl.debt)
print(summary(lmobj.1)) #model one

print(anova(lmobj.1))

lmobj.2 <- lm(prodebt ~ locintrn + manage, data=cl.debt)
print(summary(lmobj.2)) #model two

print(anova(lmobj.2))

lmobj.3 <- lm(prodebt ~ locintrn + manage + children, data=cl.debt)
print(summary(lmobj.3)) #model three

print(anova(lmobj.3))

lmobj.4 <- lm(prodebt ~ locintrn + manage + children + singpar, data=cl.debt)
print(summary(lmobj.4)) #model four

print(anova(lmobj.4))

lmobj.5 <- lm(prodebt ~ locintrn + manage + children + singpar + incomegp, data=cl.debt)
print(summary(lmobj.5)) #model five

print(anova(lmobj.5))
