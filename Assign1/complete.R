complete <- function(directory, id = 1:332) {
  listoffiles<-list.files(directory,full.names = T)
  da<-data.frame()
  for(t in id)
  {
    y<-read.csv(listoffiles[t])
    x<-sum(complete.cases(y))
    da<-rbind(da,c(t,x))
  }
  
  colnames(da)<-c("id","nobs")
  da
  
  
}