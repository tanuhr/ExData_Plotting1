source("preparingData.R")

png(file = "plot1.png", width = 480, height = 480, bg = "transparent")

hist(fullDate$Global_active_power, 
     col = "red",                               ## give hist the correct color
     xlab = "Global Acive Power (kilowatts)",   ## set name of the x bar
     main = "Global Active Power",              ## set label of the hist
     ylim = c(0, 1200))                         ## give Frequensy a bar range

dev.off()