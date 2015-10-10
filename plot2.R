## Use the loaded workdata file; add a column with a combination of `Date' and 'Time'
workdata$RealTime<-as.POSIXct(paste(workdata$Date, workdata$Time), format = "%d/%m/%Y %H:%M:%S")

## Plot using type `line`
png("plot2.png")
plot(workdata$RealTime, workdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
