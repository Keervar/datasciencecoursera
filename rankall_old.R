rankall <- function(outcome, num){
  hosp_data_new <- read.csv("outcome-of-care-measures.csv", header = TRUE, na.strings = "Not Available", stringsAsFactors = FALSE)
  #if (!(state %in% hosp_data_new[,7])){stop("invalid state")}
  if (!(outcome %in% c("heart attack","heart failure"," pneumonia"))){stop("invalid outcome")}
  if(outcome == "heart attack") { i<- 11}
  if(outcome == "heart failure") {i <- 17}
  if(outcome == "pneumonia") {i <- 23}
  y<- hosp_data_new[,c(2,7,i)]
  x<- y[order(y[,2],y[,3], na.last = NA),]
  #head(x)
  #x[num, c(1,2)]
 #z <- transform(x,rank = tapply(x[,3],x[,2], FUN = function(x)rank(x,ties.method = "first")))
 #z[num,c(1,2)]
 by(x, x[,2], FUN = function(x) print(x[num,c(1,2)]))
 #z<-transform(x,rank = ave(x[,3],x[,2], FUN = function(x) rank(x, na.last = NA)))
 #head(z)
 #z[which(z[,4]== num), c(1,2)]
#head(z)
 }