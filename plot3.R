#Exploratory Data Analysis Week 1 Project

#Load the data
setwd("C:/Users/jonho/Documents/ADS Training/Coursera/Exploratory Data Analysis")
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";",na.strings = "?")

#Reduce the data to only the desired days and convert to POSIXlt
tdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
tdata$DateTime <- as.POSIXct(paste(tdata$Date,tdata$Time),format = "%d/%m/%Y %H:%M:%S")

#Create the plot
png("plot3.png")
plot(tdata$DateTime, tdata$Sub_metering_1, type = "l",col = "black", xlab = "", ylab = "Energy sub metering")
lines(tdata$DateTime, tdata$Sub_metering_2, col = "red")
lines(tdata$DateTime, tdata$Sub_metering_3, col = "blue")
legend(x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()
