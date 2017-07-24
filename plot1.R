#    Exploratory Data Analysis
#    Course Project 1
#    Code to construct plot1

#    Call R script to read data
source("getdata.R")

#    Open png graphic device
png(filename = "plot1.png", height = 480, width = 480, units ="px")
#    Plot histogram  with title, x axis label and bar color     
hist(df$Global_active_power, main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", col = "red")
#    Close graphics device
dev.off()