dispersia<-function(x)
{
	m=mean(x)
	return (mean((x-m)^2))
}
assymetrya<-function(x)
{
	m=mean(x)
	d=dispersia(x)
	return (mean((x-m)^3)/(d*sqrt(d)))
}
ekscess<-function(x)
{
	m=mean(x)
	d=dispersia(x)
	return (mean((x-m)^4)/(d*d)-3)
}
ne_smesh_disp<-function(x)
{
	n=length(x)
	return (dispersia(x)*n/(n-1))
}