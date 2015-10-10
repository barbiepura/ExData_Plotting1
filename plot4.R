png("plot4.png")

## define parameters of graph set
par(mfrow = c(2,2), mar = c(4,4,2,1), oma=c(0,0,2,0))
with(workdata, {
      plot(RealTime, Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")
      plot(RealTime, Voltage, xlab = "datetime", type = "l")
      plot(RealTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
      lines(RealTime, Sub_metering_2, col = "red")
      lines(RealTime, Sub_metering_3, col = "blue")
      legend("topright", pch = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
      plot(RealTime, Global_reactive_power, xlab = "datetime", type = "l")
      
})

dev.off()
