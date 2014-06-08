## Plot 2

# read in data:
Data <- read.csv("household_power_consumption.txt", sep=";", 
                 header= TRUE, na.strings="?",nrows=2075259)
Data2 <- subset(Data, Data$Date=="1/2/2007" | Data$Date=="2/2/2007")


# Code that constructs Plot:
with(Data2, plot(Global_active_power, xaxt="n",
                 xlab="", ylab="Global Active Power", type="n"))
axis(1,c(0,1441,2880),labels=c("Thu","Fri","Sat"))
with(Data2, lines(Global_active_power))


# Code that creates PNG file: 
png("plot2.png", width = 480, height = 480)
with(Data2, plot(Global_active_power, xaxt="n",
                 xlab="", ylab="Global Active Power", type="n"))
axis(1,c(0,1441,2880),labels=c("Thu","Fri","Sat"))
with(Data2, lines(Global_active_power))
dev.off()

