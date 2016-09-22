x=read.csv(file="D:/учеба/пзтв/7_R1_Z1.csv",h=T,dec=".")$x
source("D:/учеба/пзтв/functions.r")
results<-c(length(x), mean(x), median(x), dispersia(x), var(x), sqrt(dispersia(x)), min(x), max(x), max(x)-min(x), assymetrya(x), ekscess(x))
names(results)<-c("Объем выборки         ", "Среднее               ", "Медиана               ", "Смещенная дисперсия   ", "Несмещенная дисперсия ", "Стандартное отклонение",
"Минимум               ", "Максимум              ", "Размах                ", "Ассиметрия            ", "Эксцесс               ")
d=data.frame(result=results)
write.table(d, file = "D:/учеба/пзтв/Z1.txt", sep = "     ", col.names =NA, quote=F)
hist(x, breaks=10)
d
