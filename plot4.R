source("preparingData.R")

png(file = "plot4.png", width = 480, height = 480, bg = "transparent")

par(mfcol = c(2,2)) ## setting 4 plots on a screen

## adding plot 1
with(fullDate, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Acive Power"))

## adding plot 2
with(fullDate, plot(DateTime, Sub_metering_1, type = "l", 
                    xlab = "", ylab = "Energy sub metering"
))
points(fullDate$DateTime, fullDate$Sub_metering_2, type = "l", col = "red")
points(fullDate$DateTime, fullDate$Sub_metering_3, type = "l", col = "blue")

legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"),     ## give the legend lines the correct color
       lty=c(1,1),                          ## give the legend appropriate symbols (lines)
       bty = "n"                            ## set no border for legend
)

## adding plot 3
with(fullDate, plot(DateTime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))

## adding plot 4
with(fullDate, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime"))
axis(2, c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5)) ## setting correct range of axis for y bar (Global_reactive_power)

dev.off()