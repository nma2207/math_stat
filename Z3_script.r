x=read.csv(file="D:/учеба/пзтв/7_R2_Z1.csv",h=T)$Z6I
source("D:/учеба/пзтв/functions2.r")
x=swap(x)
M=sum(x) #статистика
n=length(x)
alfa_c=alfa_crit(n,M,0.7,less=F)
alfa=0.05
c=c_krit(n,M,0.7,alfa)
res=ifelse(M>c,"верна альтернатива", "верна гипотеза")
results=c(n,M,alfa,c,alfa_c,res)
names(results)=c("объем выборки    ", "кол-во успехов   ","альфа            ","c-критическое    ", "альфа-критическое","результат:       ")
d=data.frame(results=results)
write.table(d, file = "D:/учеба/пзтв/Z3_1.txt", sep = "     ", col.names =F, quote=F)



