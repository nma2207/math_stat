x=read.csv(file="D:/�����/����/7_R2_Z1.csv",h=T)$Z6I
source("D:/�����/����/functions2.r")
x=swap(x)
M=sum(x) #����������
n=length(x)
alfa_c=alfa_crit(n,M,0.7,less=F)
alfa=0.05
res=ifelse(alfa_c<=alfa,"����� ������������", "����� ��������")
results=c(n,M,alfa_c,alfa,res)
names(results)=c("����� �������    ", "���-�� �������   ", "�����-�����������","�����            ","���������:       ")
d=data.frame(results=results)
write.table(d, file = "D:/�����/����/Z3_1.txt", sep = "     ", col.names =F, quote=F)