household_power_consumption <- read_delim("~/household_power_consumption.txt", ";", escape_double = FALSE, trim_ws = TRUE)

copy <- data.frame()
copy <- household_power_consumption
copy <- copy[copy$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(copy$Date, copy$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(copy$Global_active_power)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
