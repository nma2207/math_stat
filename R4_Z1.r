d<-read.csv(file="D:/�����/����/7_R4_Z1.csv",h=T)
x<-d$Z14.15.16_x
y<-d$Z14.15.16_y
source("D:/�����/����/f4.r")
data<-create_table(x,y)
data
sum(data)
sumVer<-c(sum(data[1]),sum(data[2]),sum(data[3]),sum(data[4]))
sumVer
sum(sumVer)
s<-statistika(data)
ck<-qchisq(p = 0.975, df = 3*4)
ak<-1-pchisq(s,12)
results<-c(length(x), s, ck, ak)
names(results)<-c("�����         ", "����������    ", "�-����        ", "�����-����    ")
dres<-data.frame(results=results)
write.table(dres, file = "D:/�����/����/R4_z1.txt", sep = "        ", col.names =NA, quote=F) 
