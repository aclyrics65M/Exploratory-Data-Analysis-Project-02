# set working directory
setwd("C:/Users/Faraz/Desktop/Coursera Data Science Course Sequences/Course 04 Exploratory Data Analysis")
if(!file.exists("./dataStore")){dir.create("./dataStore")}
# activity monitoring data
get.data.project <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
download.file(get.data.project,destfile="./dataStore/exdata-data-NEI_data.zip",method="auto")  

  # make sure the site is live, if it is not live stop function terminate the program
  check.url <- file(get.data.project,"r")
  if (!isOpen(check.url)) {
    stop(paste("There's a problem with the data:",geterrmessage()))
  }
  # zipfile.data is the variable to keep the *.zip file
  zipfile.data = "exdata-data-NEI_data.zip"
  
  # make sure the data in the working directory if not download the zip file into the to zipfile.data and unzip the zipfile.data
  if(!file.exists(zipfile.data)) {        
        # download.file(get.data.project,zipfile.data)
        unzip(zipfile="./dataStore/exdata-data-NEI_data.zip",exdir="./dataStore")
   } 
path_rf <- file.path("./dataStore" , "exdata-data-NEI_data")
files<-list.files(path_rf, recursive=TRUE)
files
