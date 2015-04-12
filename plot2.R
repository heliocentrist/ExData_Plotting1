#Sourcing the script that downloads and prepares the data
source("./expan.R");

#Building the plots
png(filename="plot2.png", width=480, height=480);

plot(consum$DateTime, consum$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)");

dev.off();