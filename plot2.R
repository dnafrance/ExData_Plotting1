#    Exploratory Data Analysis
#    Course Project 1
#    Code to construct plot2

#    Call R script to read data
source("getdata.R")

#    Open png graphic device
png(filename = "plot2.png", height = 480, width = 480, units ="px")
#    Plot line graph  with title, x axis label and bar color     
with(df, plot(Date,Global_active_power, lines(Date,Global_active_power),
              ylab = "Global Active Power (kilowatts)", 
              xlab = "", pch = 20, cex = -1))
#    Close graphics device
dev.off()