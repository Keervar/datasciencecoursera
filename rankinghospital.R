rankhospital <- function(state, outcome, ranking) {
  hosp_data_new <- read.csv("outcome-of-care-measures.csv", header = TRUE, na.strings = "Not Available", stringsAsFactors = FALSE)
  if (!(state %in% hosp_data_new[,7])){stop("invalid state")}
  if (!(outcome %in% c("heart attack","heart failure","pneumonia"))){stop("invalid outcome")}
  if(outcome == "heart attack") { i<- 11}
  if(outcome == "heart failure") {i <- 17}
  if(outcome == "pneumonia") {i <- 23}
  ranking1 <- ranking
y<- hosp_data_new[which(hosp_data_new[,7] == state),c(2,i)] 
  x <- y[order(y[,2],y[,1],na.last = NA),]
  if(ranking1 =="best"){x[1,1]}
  else if(ranking1 == "worst"){x[nrow(x),1]}
else x[ranking1,1]
  }