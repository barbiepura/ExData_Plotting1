## Plot 

png("plot3.png")

with(workdata, plot(RealTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))

## Add annotations to plot
with(workdata, lines(RealTime, Sub_metering_2, col = "red"))
with(workdata, lines(RealTime, Sub_metering_3, col = "blue"))

## Add legend
legend("topright", pch = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()

