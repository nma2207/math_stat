x=runif(100,4,9)
source("D:/�����/����/functions.r")
y=sort(sqrt(x))
m=(y[50]+y[51])/2
results<-c(mean(x), dispersia(x), m)
names(results)<-c("�������        ", "���������      ", "������� sqrt(x)")
d=data.frame(results=results)
write.table(d, file = "D:/�����/����/Z2_1.txt", sep = "     ", col.names =NA, quote=F)
