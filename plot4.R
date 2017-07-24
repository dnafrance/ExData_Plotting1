#    Exploratory Data Analysis
#    Course Project 1
#    Code to construct plot4

#    Call R script to read data
source("getdata.R")

#    Open png graphic device
png(filename = "plot4.png", height = 480, width = 480, units ="px")

#    Set row and column widths of graph canvas
par(mfrow = c(2,2), mar = c(5.1,4.6,3.1,1.6))

#    Create topleft graph     
with(df,{
        plot(Date,Global_active_power,ylab = "Global Active Power",
             xlab = "", pch = 20, type = "l")
        #    Create topright graph         
        plot(Date,Voltage,xlab = "datetime", pch = 20, type = "l")
        #    Create bottomleft graph
        plot(Date,Sub_metering_1,ylab = "Energy sub metering", 
             xlab = "", pch = 20, cex = -1)
        lines(Date,Sub_metering_1,col = "black")
        lines(Date,Sub_metering_2,col = "red")
        lines(Date,Sub_metering_3,col = "blue")
        legend("topright",lwd= 1, cex = 0.9, bty = "n",
               col = c("black","red","blue"), 
               legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        #    Create bottomright graph
        plot(Date, Global_reactive_power, xlab = "datetime",
             pch = 20, type = "l")
})
#    Close graphics device
dev.off()