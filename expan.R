url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

download.file(url, "expan1.zip", method="curl");

unzip("expan1.zip", exdir=".");

consum <- read.csv("household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors = FALSE);

consum <- subset(consum, Date == "1/2/2007" | Date == "2/2/2007");

consum$DateTime <- strptime(paste(consum$Date, consum$Time), "%d/%m/%Y %H:%M:%S");

consum$Global_active_power <- as.numeric(consum$Global_active_power)
consum$Global_reactive_power <- as.numeric(consum$Global_reactive_power)
consum$Voltage <- as.numeric(consum$Voltage)
consum$Global_intensity <- as.numeric(consum$Global_intensity)
consum$Sub_metering_1 <- as.numeric(consum$Sub_metering_1)
consum$Sub_metering_2 <- as.numeric(consum$Sub_metering_2)
consum$Sub_metering_3 <- as.numeric(consum$Sub_metering_3)
