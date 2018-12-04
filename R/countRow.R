#'counting num of rows

#'@param filepath path of the file
#'@return value
#'@export


count1 <- function(filepath) {
  library(dplyr)
  library(readr)
  filenames <- list.files(path=filepath, full.names=TRUE)
  datalist  <- lapply(filenames, function (x) read.csv(file=x, header=TRUE))
  RLM_Data  <- bind_rows(datalist)
  numRow <- nrow(RLM_Data)
  return(numRow)
}


#count1("./Data")
