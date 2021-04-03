data = file("household_power_consumption.txt")
x <- read.csv(data, header=T, sep=';', na.strings="?")
x1 <- subset(x, Date %in% c("1/2/2007","2/2/2007"))
x1$Date <- as.Date(x1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(x1$Date), x1$Time)
x1$Datetime <- as.POSIXct(datetime)
with(x1, {
  plot(Global_active_power~Datetime, type="l",
       xlab="", ylab ="Global Active Power (kilowatts)")
})

dev.copy(png, file="plot2.png", height=480, width=480)