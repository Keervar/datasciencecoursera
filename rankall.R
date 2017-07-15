rankall <- function(outcome, num = "best"){
  hospital_data1 <- read.csv("outcome-of-care-measures.csv", header = TRUE, na.strings = "Not Available", stringsAsFactors = FALSE)
  if (!(outcome %in% c("heart attack","heart failure","pneumonia"))){stop("invalid outcome")}
  if(outcome == "heart attack") { z<- 11}
  if(outcome == "heart failure") {z <- 17}
  if(outcome == "pneumonia") {z <- 23}
  state <- sort(unique(hospital_data1[,7]))
  hospital <- character(0)
  
  
  for(i in seq_along(state))
  {
    
    y<- hospital_data1[which(hospital_data1[,7]== state[i]),]
    #z[i] <- y[i][order(y[i][,2], y[i][,1]),]
    #hospital[i] <- z[i][num, ]
    #hospital[i]
    xy <- y[order(y[,z],y[,2],decreasing = F,na.last = NA), ]
    if(num == "best"){num <- 1}
    if(num == "worst") {num <- length(xy[,2])}
    hospital[i] <- xy[num,2]  
    
    }
  hospital_final <- data.frame(hospital = hospital, state= state,row.names = state)
  hospital_final
}