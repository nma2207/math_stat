x<-read.csv(file="D:/учеба/пзтв/7_R3_Z2.csv", h=T)$Z11
Q<-0.99
alfa=0.01
1-alfa
n<-length(x)
ta<-qt(0.99,n-1)
x_<-mean(x)
source("D:/учеба/пзтв/functions.r")
s2<-dispersia(x)
s<-sqrt(s2)
m<-s/sqrt(n)
nb<-x_-m*ta

results<-c(n, x_, m, nb, ta)
names(results)<-c("Объем выборки       ", "Выборочное среднее  ", "Ст.ошибка среднего ","Нижняя граница      " , "Квантиль         ")
d<-data.frame(results=results)
write.table(d, file = "D:/учеба/пзтв/R3_z2.txt", sep = "     ", col.names =NA, quote=F)  
d
