#Exploratory Data Analysis Week 1 Project

#Load the data
setwd("C:/Users/jonho/Documents/ADS Training/Coursera/Exploratory Data Analysis")
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";",na.strings = "?")

#Reduce the data to only the desired days and convert to POSIXlt
tdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
tdata$DateTime <- as.POSIXct(paste(tdata$Date,tdata$Time),format = "%d/%m/%Y %H:%M:%S")

#Create the plot
png("plot2.png")
plot(tdata$DateTime,tdata$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
