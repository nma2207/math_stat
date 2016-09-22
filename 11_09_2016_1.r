demo()
help()
3+2
#aedf
install.packages("Rcmdr", dependencies=TRUE)
q()
source("D:/учеба/пзтв/z1.r",echo=T)
library(moments)
results<-c(length(x),mean(x),median(x),var(a),sqrt(var(a)),min(x),max(x),max(x)-min(x), skewness(a),kurtosis(a)-3)
results
name(results)<-c("Объем выборки","Среднее", "Медиана", "Дисперсия", "Станд.отклонение", "Минимум", "Максимум", "Размах","Ассиметрия","Эксцесс")
names(results)<-c("Объем выборки","Среднее", "Медиана", "Дисперсия", "Станд.отклонение", "Минимум", "Максимум", "Размах","Ассиметрия","Эксцесс")
results
d<-data.frame(result=results)
d
write.table(d,file="D:/учеба/пзтв/Z1.txt")
write.table(d,file="D:/учеба/пзтв/Z1.xls",quote=F,col.names=NA)
savehistory("D:/учеба/пзтв/11_09_2016_1.r")
