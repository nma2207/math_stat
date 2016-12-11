d<-read.csv(file="D:/учеба/пзтв/7_R4_Z1.csv",h=T)
x<-d$Z14.15.16_x
y<-d$Z14.15.16_y
source("D:/учеба/пзтв/f4.r")
data<-create_table(x,y)
data
sumVer<-c(sum(data[1]),sum(data[2]),sum(data[3]),sum(data[4]),sum(data[5]))
sumVer
sum(sumVer)
statistika(data)
qchisq(p = 0.95, df = 8)
