d<-read.csv(file="D:/учеба/пзтв/7_R4_Z2.csv",h=T)
source("D:/учеба/пзтв/f4.r")
x<-d$Z14.15.16_x
y<-d$Z14.15.16_y
r<-cor(x,y)
my<-mean(y)
dx<-var(x)
dy<-var(y)
b<-r*dy/dx
lm(y~x)
mx<-mean(x)
model<-lm(y~x)
plot(y~x,xlab='x',ylab='y')
abline(model)
l<-my-b*mx
y1<-b*118+l
y2<-0.3411*118+41.5443
results<-c(length(x),mean(x),mean(y),var(x),var(y),cor(x,y),b,l,0.3411,41.5443,y1,y2)
names(results)<-c("объем", "среднее х", "среднее у","дисп.x", "дисп. у", "коэф.корр", "b1","своб.член1", "b2", "своб.член2", "мой прогноз", "прогноз R")
dres<-data.frame(results)
write.table(dres, file = "D:/учеба/пзтв/R4_z2.txt", sep = "        ", col.names =NA, quote=F) 
