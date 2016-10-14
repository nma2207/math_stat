x=read.csv(file="D:/учеба/пзтв/7_R2_Z1.csv",h=T)$Z6I
source("D:/учеба/пзтв/functions2.r")
x=swap(x)
M=sum(x) #статистика
n=length(x)
alfa_c=alfa_crit(n,M,0.7,less=F)
alfa=0.05
res=ifelse(alfa_c<=alfa,"верна альтернатива", "верна гипотеза")
results=c(n,M,alfa_c,alfa,res)
names(results)=c("объем выборки    ", "кол-во успехов   ", "альфа-критическое","альфа            ","результат:       ")
d=data.frame(results=results)
write.table(d, file = "D:/учеба/пзтв/Z3_1.txt", sep = "     ", col.names =F, quote=F)