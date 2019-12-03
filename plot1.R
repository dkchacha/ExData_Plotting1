## Storing the data
powerConsumption <- read.table("household_power_consumption.txt", skip=1, sep=";")

## Giving heading names to the data
names(powerConsumption) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

## Getting the relevant data dates and storing it
febPowerConsumption <- subset(powerConsumption, powerConsumption$Date == "1/2/2007" | powerConsumption$Date == "2/2/2007")

# Determining the copy file format and its size
png("plot1.png", width = 480, height = 480)

## Plotting the graph
hist(as.numeric(as.character(febPowerConsumption$Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")

## Plastering the title on
title(main = "Global Active Power")

# dev.off
dev.off()
