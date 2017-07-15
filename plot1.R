df <- read.table("household_power_consumption.txt", na.strings = "?", header = TRUE, sep = ";")
df$Date <- as.Date(df$Date , format ="%d/%m/%Y")
df1 <- subset(df, df$Date == "2007-02-01"| df$Date=="2007-02-02")
hist(df1$Global_active_power,col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency",
     main = "Global Active Power")
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()