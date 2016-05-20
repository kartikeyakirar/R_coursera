best <- function(state, outcome) {
  ## Read outcome data
    data<-read.csv("/home/kartikeya/Downloads/R/rprog-data-ProgAssignment3-data/outcome-of-care-measures.csv")
  ## Check that state and outcome are valid
desease<-c("heart attack", "heart failure","pneumonia")
              if(state %in%levels(data[,2])&& outcome  %in% desease)
            stop("invalid state or outcome")
    col<-if(outcome ==desease[1])
      {11
      }else if(outcome==desease[2])
      {17
        }else if(outcome==desease[3])
      {23}
    ## Return hospital name in that state with lowest 30-day death
          new_data<-subset(data,State==state)
          id<-which.min(new_data[,col])
          as.character(new_data[id,2])
    ## rate
}


