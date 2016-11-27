x<-read.csv(file="D:/учеба/пзтв/7_R3_Z1.csv",h=T)$x
m<-mean(x)
o<-(1-2*m)/(m-1)
results<-c(length(x),m,o)
names(results)<-c("Объем выборки   ", "Среднее         ", "Оценка          ")
d<-data.frame(results=results)
write.table(d, file = "D:/учеба/пзтв/R3_z1.txt", sep = "        ", col.names =NA, quote=F) 
d
