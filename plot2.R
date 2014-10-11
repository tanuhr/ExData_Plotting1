source("preparingData.R")

png(file = "plot2.png", width = 480, height = 480, bg = "transparent")

with(fullDate, plot(DateTime, Global_active_power, 
                    type = "l",                             ## set how plot is displayed
                    xlab = "",                              ## set empy name of the x bar
                    ylab = "Global Acive Power (kilowatts)" ## set name of the y bar
                    ))

dev.off()