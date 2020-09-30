##################Chi-square Test(customer order form)##############

library(readr)
customerorderform<-read.csv("C:/Users/HP/Desktop/assignments submission/Hypothesis testing/Costomer+OrderForm.csv")
View(customerorderform)
attach(customerorderform)

#apply stack function
stacked_cof<-stack(customerorderform)
View(stacked_cof)

table(stacked_cof$values,stacked_cof$ind)

###############chi-square test###########

chisq.test(table(stacked_cof$values,stacked_cof$ind))
#p-value = 0.2771 > 0.05, accept H0
# H0: 4 centers having same error in order forms
# H1: 4 centers errors varies in order forms
