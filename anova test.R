#######################Anova Test(ContractRenewal_Data(unstacked))###############################

library(readxl)
CRD<-read_excel("C:/Users/HP/Desktop/datasets/ContractRenewal_Data(unstacked).xlsx")  
View(CRD)
Stacked_Data <- stack(CRD)
View(Stacked_Data)
attach(Stacked_Data)

#var.test(CRD$`Supplier A`,CRD$`Supplier B`,CRD$`Supplier C`)
library(car)
leveneTest(values,ind,data= Stacked_Data)

Anova_results <- aov(values~ind,data = Stacked_Data)
summary(Anova_results)
# p-value = 0.104 > 0.05 accept null hypothesis 
# All Proportions are equal 
