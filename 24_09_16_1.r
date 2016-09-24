x= sqrt(runif (100, min=4,max=9))
source("D:/учеба/пзтв/functions.r")
y=x[round(runif(30,0,100),0)]
results<-c(mean(x), dispersia(x), median(x),mean(y),dispersia(y),median(y))
names(results)<-c("Среднее    ", "Дисперсия  ", "Медиана    ", "Среднее М-К", "Дисп М-К   ", "Мед М-К    ")
d=data.frame(results=results)
write.table(d, file = "D:/учеба/пзтв/Z2.txt", sep = "     ", col.names =NA, quote=F)

