best <- function(state, outcome){
  hospital_data1 <- read.csv("outcome-of-care-measures.csv", header = TRUE, na.strings = "Not Available", stringsAsFactors = FALSE)
  if (!(state %in% hospital_data1[,7])){stop("invalid state")}
  if (!(outcome %in% c("heart attack","heart failure","pneumonia"))){stop("invalid outcome")}
  if(outcome == "heart attack") { i<- 11}
          if(outcome == "heart failure") {i <- 17}
          if(outcome == "pneumonia") {i <- 23}
  y<- hospital_data1[which(hospital_data1[,7] == state),c(2,i)]
    x <- sort(y[which(y[,2]== min(y[,2], na.rm = T)),1],decreasing = F, na.last = NA)
      x      
    }