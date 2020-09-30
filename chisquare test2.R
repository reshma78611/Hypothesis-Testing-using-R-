##################Chi-square test(Buyer ratio)###############

library(readr)
buyerratio<-read.csv("C:/Users/HP/Desktop/assignments submission/Hypothesis testing/BuyerRatio.csv")
View(buyerratio)
buyer_ratio<-buyerratio[,-1]
View(buyer_ratio)

############chi-square test###############

chisq.test(buyer_ratio)
#p-value = 0.6603 > 0.05, accept H0
#H0: All proportions are equal
#Ha: All proportions are not equal

row.names(buyer_ratio)<-c('males','females')
View(buyer_ratio)
