#    Exploratory Data Analysis
#    Course Project 1
#    Code to read data

#    Check if file exists, else download, unzip, read
fUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if(!file.exists("household_power_consumption.txt")) {
        download.file(fUrl,"./hpc.zip")
        dfile <- file(unzip("./hpc.zip"))
}else {
        dfile <- file("household_power_consumption.txt")
}

#    Require sqldf library to filter data without reading all of it in memory
library(sqldf)
df <- sqldf("select * from dfile 
            where Date = '1/2/2007' or Date = '2/2/2007'", 
            file.format = list ( header = TRUE, sep = ";"))

#    Convert Date field into POSIXlt datetime format     
df$Date <- strptime(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")

#    Close file connection
close(dfile)