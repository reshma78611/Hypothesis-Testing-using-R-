#######################2 sample T test(Cutlets)####################

library(readr)
cutlets=read.csv("C:/Users/HP/Desktop/assignments submission/Hypothesis testing/Cutlets.csv")
View(cutlets)
attach(cutlets)

###########Normality test#############

shapiro.test(Unit.A)
#p-val=0.32>0.05, accept H0 =>Normal
shapiro.test(Unit.B)
#p-val=0.52>0.05, accept H0 =>Normal

##############variance test ##################

var.test(Unit.A,Unit.B,data=cutlets)
#p-value = 0.3136>0.05, accept H0 =>Equal Variance

################2 sample T test###########

t.test(Unit.A,Unit.B,data=cutlets,alternative="two.sided",conf.level=0.95)
#p-value = 0.4723>0.05, accept H0 
#H0= difference in diameter of cutlet of unit A & B=0
#Ha= difference in diameter of cutlet of unit A & B!=0