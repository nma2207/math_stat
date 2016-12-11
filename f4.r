create_table<-function(x,y)
{
  d<-c(0,0,0)
  data<-data.frame(D1=d,D2=d,D3=d,D4=d,D5=d)
  for(i in 1:length(x))
  {
    if(x[i]<114.05)
    {
      if(y[i]<80.05)
        data$D1[1]=data$D1[1]+1
      else
        if(y[i]<82.05)
          data$D2[1]=data$D2[1]+1
        else
          if(y[i]<84.05)
            data$D3[1]=data$D3[1]+1
          else
            if(y[i]<86.05)
              data$D4[1]=data$D4[1]+1
            else
                data$D5[1]=data$D5[1]+1
             
        
    }
    else
    {
      if(x[i]<122.05)
    {
        if(y[i]<80.05)
          data$D1[2]=data$D1[2]+1
        else
          if(y[i]<82.05)
            data$D2[2]=data$D2[2]+1
          else
            if(y[i]<84.05)
              data$D3[2]=data$D3[2]+1
            else
              if(y[i]<86.05)
                data$D4[2]=data$D4[2]+1
              else
                data$D5[2]=data$D5[2]+1
      
    }
    else
    {
      if(y[i]<80.05)
        data$D1[3]=data$D1[3]+1
      else
        if(y[i]<82.05)
          data$D2[3]=data$D2[3]+1
        else
          if(y[i]<84.05)
            data$D3[3]=data$D3[3]+1
          else
            if(y[i]<86.05)
              data$D4[3]=data$D4[3]+1
            else
              data$D5[3]=data$D5[3]+1
            }
    }
  }
    return(data)
}
f<-function(x,y)
{
  for(i in 1:length(x))
  {
    if(x[i]<114.05 && y[i]>86.05)
    {
      print(x[i])
      print(y[i])
    }
  }
}
statistika<-function(data)
{
  sumVer<-c(sum(data[1]),sum(data[2]),sum(data[3]),sum(data[4]),sum(data[5]))
  sumHor<-c(0,0,0)
  for(i in 1:3)
  {
    sumHor[i]<-data$D1[i]+data$D2[i]+data$D3[i]+data$D4[i]+data$D5[i]
  }
  n<-sum(data)
  x2<-0
  for (m in 1:3)
  {
    x2<-x2+((n*data$D1[m]-sumHor[i]*sumVer[1])^2)/(n*sumHor[i]*sumVer[1])
    x2<-x2+((n*data$D2[m]-sumHor[i]*sumVer[2])^2)/(n*sumHor[i]*sumVer[2])
    x2<-x2+((n*data$D3[m]-sumHor[i]*sumVer[3])^2)/(n*sumHor[i]*sumVer[3])
    x2<-x2+((n*data$D4[m]-sumHor[i]*sumVer[4])^2)/(n*sumHor[i]*sumVer[4])
    x2<-x2+((n*data$D5[m]-sumHor[i]*sumVer[5])^2)/(n*sumHor[i]*sumVer[5])
  }
  return (x2)
}