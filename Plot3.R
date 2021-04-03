data = file("household_power_consumption.txt")
x <- read.csv(data)
x1$Date <- as.Date(x1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(x1$Date), x1$Time)
x1$Datetime <- as.POSIXct(datetime)
with(x1, {
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png", height=480, width=480)