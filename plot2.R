## Storing the data
powerConsumption <- read.table("household_power_consumption.txt", skip=1, sep=";")

## Giving heading names to the data
names(powerConsumption) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

## Getting the relevant data dates and storing it
febPowerConsumption <- subset(powerConsumption, powerConsumption$Date == "1/2/2007" | powerConsumption$Date == "2/2/2007")

## Require the data to be converted from characters to date/POSIX1t
febPowerConsumption$Date <- as.Date(febPowerConsumption$Date, format="%d/%m/%Y")
febPowerConsumption$Time <- strptime(febPowerConsumption$Time, format="%H:%M:%S")

## Need to divide time into minutes
febPowerConsumption[1:1440,"Time"] <- format(febPowerConsumption[1:1440,"Time"],"2007-02-01 %H:%M:%S")
febPowerConsumption[1441:2880,"Time"] <- format(febPowerConsumption[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

# Determining the copy file format and its size
png("plot2.png", width = 480, height = 480)

## Plotting the graph
plot(febPowerConsumption$Time, as.numeric(as.character(febPowerConsumption$Global_active_power)), type="l", xlab="", ylab="Global Active Power (kilowatts)") 

# dev.off
dev.off()
