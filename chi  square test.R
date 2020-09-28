#########Chi Square(Bahaman Research)#################

library(readxl)
Bahaman<-read_excel("C:/Users/HP/Desktop/datasets/Bahaman.xlsx")
View(Bahaman)
attach(Bahaman)
table(Country,Defective)
chisq.test(table(Country,Defective))
# p-value = 0.6315 > 0.05  => Accept null hypothesis
# => All countries have equal proportions 
