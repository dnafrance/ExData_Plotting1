
#    Exploratory Data Analysis
#    Course Project 1
#    Code to construct plot3

#    Call R script to read data
source("getdata.R")

#    Open png graphic device
png(filename = "plot3.png", height = 480, width = 480, units ="px")
#    Plot line graph  with title, x axis label and bar color     
with(df,plot(Date,Sub_metering_1, ylab = "Energy sub metering",
             xlab = "", pch = 20, cex = -1))
#    Add 3 series of sub metering with different colors      
lines(df$Date, df$Sub_metering_1, col = "black")
lines(df$Date, df$Sub_metering_2, col = "red")
lines(df$Date, df$Sub_metering_3, col = "blue")
#    Add legend     
legend("topright",lwd = 1, cex = 1, 
       col = c("black","red","blue"), legend = c("Sub_metering_1",
                                                 "Sub_metering_2","Sub_metering_3"))
#    Close graphics device
dev.off()