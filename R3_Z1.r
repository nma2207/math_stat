x<-read.csv(file="D:/�����/����/7_R3_Z1.csv",h=T)$x
m<-mean(x)
o<-(1-2*m)/(m-1)
results<-c(length(x),m,o)
names(results)<-c("����� �������   ", "�������         ", "������          ")
d<-data.frame(results=results)
write.table(d, file = "D:/�����/����/R3_z1.txt", sep = "        ", col.names =NA, quote=F) 
d
