
## read all data into R
alldata<-read.csv("household_power_consumption.txt", header = T, sep = ";", stringsAsFactors = F)

## Change the class of 'Date' to Date
classdate<-as.Date(alldata$Date, "%d/%m/%Y")

## Subset data to get only 2 days
workdata<-alldata[classdate=="2007-02-01"|classdate=="2007-02-02", ]
write.table(workdata, "workdata.txt")

## plot against Global Active Power
png("plot1.png")
hist(as.numeric(workdata$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
