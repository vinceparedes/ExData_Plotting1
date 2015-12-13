##plot3.R

##call the create data program
source("download.R")

##open graphics device
png(file = "plot3.png", width = 480, height = 480, units = "px") 

##Now plot the data
with(df, plot(DateTime, Sub_metering_1, , type="l", xlab="", ylab="Energy sub metering", cex.lab=.95, cex.axis=.95))
with(df, points(DateTime, Sub_metering_2, col="red", type="l"))
with(df, points(DateTime, Sub_metering_3, col="blue", type="l"))
legend("topright", lty=1, lwd=1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", 
              "Sub_metering_2", "Sub_metering_3"), cex=.95 )


dev.off() ##close the png file device