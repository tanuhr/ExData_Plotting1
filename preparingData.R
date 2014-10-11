## reading all data into R
data <- read.table("household_power_consumption.txt", na.strings = "?", header = TRUE, sep = ";",
                   colClasses = c("character","character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

## selecting data with required dates
shortData <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

## adding new variable with date in a correct format
shortData$DateTime <- strptime(paste(shortData$Date, shortData$Time), "%d/%m/%Y %H:%M:%S")

## removing unnecessary columns with dates and times
fullDate <- shortData[,-c(1,2)]

## removing unnecessary data
rm(data)
rm(shortData)