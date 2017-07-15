rankall <- function(outcome, num){
  hosp_data_new <- read.csv("outcome-of-care-measures.csv", header = TRUE, na.strings = "Not Available", stringsAsFactors = FALSE)
  #if (!(state %in% hosp_data_new[,7])){stop("invalid state")}
  if (!(outcome %in% c("heart attack","heart failure"," pneumonia"))){stop("invalid outcome")}
  if(outcome == "heart attack") { i<- 11}
  if(outcome == "heart failure") {i <- 17}
  if(outcome == "pneumonia") {i <- 23}
  y<- hosp_data_new[,c(2,7,i)]
  a<- levels(hosp_data_new[,2])
  for (i in a){
    x[i] <- y[order(y[which(y[,2] == i),][,3]),]
                 x[i]
  }}