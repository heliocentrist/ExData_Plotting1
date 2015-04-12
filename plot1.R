#Sourcing the script that downloads and prepares the data
source("./expan.R");

#Building the plots
png(filename="plot1.png", width=480, height=480);

hist(consum$Global_active_power, col="red", 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power");

dev.off();