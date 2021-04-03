data = file("household_power_consumption.txt")
x <- read.csv(data, header=T, sep=';', na.strings="?")
x1 <- subset(x, Date %in% c("1/2/2007","2/2/2007"))
x1$Date <- as.Date(x1$Date, format="%d/%m/%Y")
hist(x1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)

