#Sourcing the script that downloads and prepares the data
source("./expan.R");

#Building the plot
png(filename="plot3.png", width=480, height=480);

plot(consum$DateTime, consum$Sub_metering_1,
     type="l",
     xlab="",
     ylab="Energy sub metering");

points(consum$DateTime, consum$Sub_metering_2, col="red", type="l");

points(consum$DateTime, consum$Sub_metering_3, col="blue", type="l");

legend("topright", col = c("black","red","blue"), lwd=1, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"));

dev.off();