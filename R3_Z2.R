x<-read.csv(file="D:/�����/����/7_R3_Z2.csv", h=T)$Z11
Q<-0.99
alfa=0.01
1-alfa
n<-length(x)
ta<-qt(Q,n-1)
x_<-mean(x)
source("D:/�����/����/functions.r")
s2<-dispersia(x)
s<-sqrt(s2)
m<-s/sqrt(n)
nb<-x_-m*ta

results<-c(n, x_, m, nb, ta)
names(results)<-c("����� �������       ", "���������� �������  ", "��.������ �������� ","������ �������      " , "��������         ")
d<-data.frame(results=results)
write.table(d, file = "D:/�����/����/R3_z2.txt", sep = "     ", col.names =NA, quote=F)  
d
