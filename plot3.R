source("preparingData.R")

png(file = "plot3.png", width = 480, height = 480, bg = "transparent")

with(fullDate, plot(DateTime, Sub_metering_1, type = "l", 
                    xlab = "", ylab = "Energy sub metering"     ## add titles to the axes 
                    ))
points(fullDate$DateTime, fullDate$Sub_metering_2, type = "l", col = "red")  ## add new category with different color
points(fullDate$DateTime, fullDate$Sub_metering_3, type = "l", col = "blue") 


legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"),     ## gives the legend lines the correct color
       lty=c(1,1)                           ## gives the legend appropriate symbols (lines)
       )

dev.off()