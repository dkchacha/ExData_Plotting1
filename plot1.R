## Storing the data
powerConsumption <- read.table("C:/Users/dkcho/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt", skip=1, sep=";")

## Giving heading names to the data
names(powerConsumption) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

## Getting the relevant data dates and storing it
febPowerConsumption <- subset(powerConsumption, powerConsumption$Date == "1/2/2007" | power$Date == "2/2/2007")

## Plotting the graph
hist(as.numeric(as.character(febPowerConsumption$Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")

## Plastering the title on
title(main = "Global Active Power")
