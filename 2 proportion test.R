
###################Proportional T Test(JohnyTalkers data)############

library(readxl)
Johnytalkers<-read_excel("C:/Users/HP/Desktop/datasets/JohnyTalkers.xlsx")   
View(Johnytalkers) 
attach(Johnytalkers)
table1 <- table(Icecream,Person)
table1
?prop.test
prop.test(x=c(58,152),n=c(480,740),conf.level = 0.95,correct = FALSE,alternative = "less")
# two. sided -> means checking for equal proportions of Adults and children under purchased
# p-value = 6.261e-05 < 0.05 accept alternate hypothesis i.e.
# Unequal proportions 

prop.test(x=c(58,152),n=c(480,740),conf.level = 0.95,correct = FALSE,alternative = "greater")
# Ha -> Proportions of Adults > Proportions of Children
# Ho -> Proportions of Children > Proportions of Adults
# p-value = 0.999 >0.05 accept null hypothesis 
# so proportion of Children > proportion of Adult
# Do not launch the incentive program