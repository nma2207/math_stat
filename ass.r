assymetria<-function(data.x)
{
result=0
x1=mean(x)
n=length(x)
for (i in 1:n)
{
result=result+((x[,i]-x1)^3)
}
result=result/(n*var(t(x))*sqrt(var(t(x))))
return (result)
}
exses<-function(data.x)
{
result=0
x1=mean(x)
n=length(x)
for (i in 1:n)
{
result=result+((x[,i]-x1)^4)
}
print(result)
result=(result/(n*(var(t(x)))^2))-3
return (result)
}
