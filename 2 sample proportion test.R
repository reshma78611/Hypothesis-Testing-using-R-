##################2 sample proportion test(Fantaloons)#################

library(readr)
fantaloons<-read.csv("C:/Users/HP/Desktop/assignments submission/Hypothesis testing/Faltoons.csv")
View(fantaloons)
attach(fantaloons)

##############2 sample proportion test###################
prop.test(c(66,47),c(233,167),conf.level = 0.95,correct=FALSE,alternative="two.sided")
#p-value = 0.9681 > 0.05, accept H0
#H0: equal number of male and female on weekend and weekday
#H1: Unequal number of male and female on weekend and weekday
