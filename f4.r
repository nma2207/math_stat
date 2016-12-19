create_table<-function(x,y)
{
  d<-c(0,0,0,0,0)
  d
  data<-data.frame(D1=d,D2=d,D3=d,D4=d)
  data
  for(i in 1:length(x))
  {
    if(x[i]<117.05)
    {
      if(y[i]<80.05)
        data$D1[1]=data$D1[1]+1
      else
        if(y[i]<83.05)
          data$D2[1]=data$D2[1]+1
        else
          if(y[i]<86.05)
            data$D3[1]=data$D3[1]+1
          else
              data$D4[1]=data$D4[1]+1
          
    }
    else if(x[i]<119.71)
    {
      if(y[i]<80.05)
        data$D1[2]=data$D1[2]+1
      else
        if(y[i]<83.05)
          data$D2[2]=data$D2[2]+1
        else
          if(y[i]<86.05)
            data$D3[2]=data$D3[2]+1
          else
            data$D4[2]=data$D4[2]+1
    }
    else if(x[i]<117.05+5.33)
    {
      if(y[i]<80.05)
        data$D1[3]=data$D1[3]+1
      else
        if(y[i]<83.05)
          data$D2[3]=data$D2[3]+1
        else
          if(y[i]<86.05)
            data$D3[3]=data$D3[3]+1
          else
            data$D4[3]=data$D4[3]+1
    }
    else if(x[i]<125.05)
    {
      if(y[i]<80.05)
        data$D1[4]=data$D1[4]+1
      else
        if(y[i]<83.05)
          data$D2[4]=data$D2[4]+1
        else
          if(y[i]<86.05)
            data$D3[4]=data$D3[4]+1
          else
            data$D4[4]=data$D4[4]+1
    }
    else
    {
      if(y[i]<80.05)
        data$D1[5]=data$D1[5]+1
      else
        if(y[i]<83.05)
          data$D2[5]=data$D2[5]+1
        else
          if(y[i]<86.05)
            data$D3[5]=data$D3[5]+1
          else
            data$D4[5]=data$D4[5]+1
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
  sumVer<-c(sum(data[1]),sum(data[2]),sum(data[3]),sum(data[4]))
  sumHor<-c(0,0,0,0,0)
  for(i in 1:5)
  {
    sumHor[i]<-data$D1[i]+data$D2[i]+data$D3[i]+data$D4[i]
  }

  n<-sum(data)
  x2<-0
  for (m in 1:5)
  {
    x2<-x2+((n*data$D1[m]-sumHor[m]*sumVer[1])^2)/(n*sumHor[m]*sumVer[1])
    x2<-x2+((n*data$D2[m]-sumHor[m]*sumVer[2])^2)/(n*sumHor[m]*sumVer[2])
    x2<-x2+((n*data$D3[m]-sumHor[m]*sumVer[3])^2)/(n*sumHor[m]*sumVer[3])
    x2<-x2+((n*data$D4[m]-sumHor[m]*sumVer[4])^2)/(n*sumHor[m]*sumVer[4])
  }
  return (x2)
}
korr<-function(x,y)
{
  source("D:/учеба/пзтв/functions.r")
  mx<-mean(x)
  my<-mean(y)
  r<-0
  for(i in 1:length(x))
  {
    r<-r+(x[i]-mx)*(y[i]-my)
  }
  print(r)
  r<-r/(length(x)*(dispersia(x)^0.5)*(dispersia(y)^0.5))
  return(r)
}