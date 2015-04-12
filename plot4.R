#Sourcing the script that downloads and prepares the data
source("./expan.R");


#Building the plots
png(filename="plot4.png", width=480, height=480);

par(mfrow=c(2,2));

#Global active power

plot(consum$DateTime, consum$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power");

#Voltage

plot(consum$DateTime, consum$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage");

#Energy sub metering

plot(consum$DateTime, consum$Sub_metering_1,
     type="l",
     xlab="",
     ylab="Energy sub metering");

points(consum$DateTime, consum$Sub_metering_2, col="red", type="l");

points(consum$DateTime, consum$Sub_metering_3, col="blue", type="l");

legend("topright", col = c("black","red","blue"), lwd=1, bty="n", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"));

#Global reactive power

plot(consum$DateTime, consum$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power");

dev.off();