counter<-function(data.x)
{
	result<-c(0,0,0,0,0,0,0,0,0,0)
	dx=(max(x)-min(x))/10
	min=min(x)
	print(dx)
	for (i in 1:length(x))
	{
	   result[round((x[,i]-min)/dx,0)]=result[round((x[,i]-min)/dx,0)]+1
	}
	return (result)
}