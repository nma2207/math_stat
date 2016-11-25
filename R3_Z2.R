x<-read.csv(file="D:/учеба/пзтв/7_R3_Z2.csv", h=T)$Z11
Q<-0.99
alfa=0.01
1-alfa
n<-length(x)
ta<-qt(1-alfa,n-1)
ta2<-qt(1-alfa/2,n-1)
m<-mean(x)
s<-sd(x)
var(x)
s*s
source("D:/учеба/пзтв/functions.r")
s<-sqrt(dispersia(x))
dn<-m-s/(sqrt(n-1))*ta2
dv<-m+s/(sqrt(n-1))*ta2
un<-m-s/(sqrt(n-1))*ta
uv<-m+s/(sqrt(n-1))*ta
