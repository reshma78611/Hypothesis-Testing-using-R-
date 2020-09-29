###############Anova Test(LABTAT)###############

library(readr)
labtat<-read.csv(file.choose())
View(labtat)
attach(labtat)

# Apply 'stack' function

stacked_labtat<-stack(labtat)
View(stacked_labtat)

############Variance test############

library(car)
leveneTest(values,ind,data=stacked_labtat)
#p-value=0.7 >0.05, accept H0 =>Equal variance

#############Anova Test############

Anova_result<-aov(values~ind,data=stacked_labtat)
summary(Anova_result)
#p-value= 2e-16 < 0.05, accept Ha
#H0: difference in avg TAT of 4 laborataries=0
#Ha: difference in avg TAT of 4 laborataries!=0 
