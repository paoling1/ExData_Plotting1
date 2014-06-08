## Plot 1

# read in data:
Data <- read.csv("household_power_consumption.txt", sep=";", 
                 header= TRUE, na.strings="?",nrows=2075259)
Data2 <- subset(Data, Data$Date=="1/2/2007" | Data$Date=="2/2/2007")


# Code that constructs Plot:
with(Data2, hist(Global_active_power, main = "Global Active Power",
                 col= "red", 
                 xlab= "Global Active Power (kilowatts)",
                 ylab= "Frequency",))


# Code that creates PNG file: 
png("plot1.png", width = 480, height = 480)
with(Data2, hist(Global_active_power, main = "Global Active Power",
                 col= "red", 
                 xlab= "Global Active Power (kilowatts)",
                 ylab= "Frequency",))
dev.off()
