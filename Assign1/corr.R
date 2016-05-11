corr <- function(directory, threshold = 0) {
 listoffiles<-list.files(directory,full.names =T )
 da<-c()
 for(t in 1:length(listoffiles))
 {
   file<-read.csv(listoffiles[t])
    ck<-sum(complete.cases(file))
   if(ck>threshold)
     da<-c(da,cor(file$sulfate,file$nitrate,use="complete.obs"))
 }
 da
}