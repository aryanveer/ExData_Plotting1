household_power_consumption <- read_delim("~/household_power_consumption.txt",";", escape_double = FALSE, trim_ws = TRUE)

copy <- data.frame()
copy <- household_power_consumption
copy$Date <- as.Date(copy$Date , format = "%d/%m/%Y")

copy <- copy[(copy$Date >= "2007-02-01") & (copy$Date <= "2007-02-02"),]
globalActivePower <- as.numeric(copy$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")