swap<-function(x){
	return (ifelse(x=="A",0,1))
}

alfa_crit=function(n,m,p, less){
  result=0.0
  if(less==TRUE){
    for(i in 0:m){
      result=result+choose(n,i)*(p^i)*((1-p)^(n-i))
    }
  }
  else{
    for(i in m:n){
      result=result+choose(n,i)*(p^i)*((1-p)^(n-i))
    }
  }
  return (result)
}
c_krit=function(n,m,p,alpha){
  c=n;
  while(alfa_crit(n,c,p,less=F)<alpha){
    c=c-1;
  }
  return (c+1)
}

