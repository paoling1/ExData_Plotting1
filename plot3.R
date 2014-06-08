## Plot 3

# read in data:
Data <- read.csv("household_power_consumption.txt", sep=";", 
                 header= TRUE, na.strings="?",nrows=2075259)
Data2 <- subset(Data, Data$Date=="1/2/2007" | Data$Date=="2/2/2007")


# Code that constructs Plot:
with(Data2, plot(Global_active_power, xaxt = "n", yaxt="n",
                 xlab = "", ylab = "Energy sub metering",
                 ylim = c(0, 38), type = "n"))
axis(1, c(0,1441,2880), labels = c("Thu","Fri","Sat"))
axis(2, c(0, 10, 20, 30))
with(Data2, lines(Sub_metering_1))
with(Data2, lines(Sub_metering_2, col = "red"))
with(Data2, lines(Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Submetering_2",
                  "Sub_metering_3"), lty = 1, cex = 0.7)

# Code that creates PNG file:
png("plot3.png", width = 480, height = 480)
with(Data2, plot(Global_active_power, xaxt = "n", yaxt="n",
                 xlab = "", ylab = "Energy sub metering",
                 ylim = c(0, 38), type = "n"))
axis(1, c(0,1441,2880), labels = c("Thu","Fri","Sat"))
axis(2, c(0, 10, 20, 30))
with(Data2, lines(Sub_metering_1))
with(Data2, lines(Sub_metering_2, col = "red"))
with(Data2, lines(Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Submetering_2",
                  "Sub_metering_3"), lty = 1, cex = 0.7)
dev.off()

