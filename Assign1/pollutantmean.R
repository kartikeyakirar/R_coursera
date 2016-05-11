pollutantmean<-function(directory,pollutent,id=1:332)
{
  listoffiles<-list.files(directory,full.names = T)
  dat<-data.frame()
  for(t in id)
  {
    dat<-rbind(dat,read.csv(listoffiles[t]))
  }
  
  mean(dat[,pollutent],na.rm = T)
}