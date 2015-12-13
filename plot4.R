##plot4.R

##call the create data program
source("download.R")

##open graphics device
png(file = "plot4.png", width = 480, height = 480, units = "px") 

par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

with(df, {
  #1
  plot(df$DateTime, df$Global_active_power, type="l", xlab="", 
       ylab="Global Active Power")
  
  #2
  with(df, plot(DateTime,Voltage, type="l", xlab="datetime"))
  
  #3
  with(df, plot(DateTime, Sub_metering_1, , type="l", xlab="", ylab="Energy sub metering"))
  with(df, points(DateTime, Sub_metering_2, col="red", type="l"))
  with(df, points(DateTime, Sub_metering_3, col="blue", type="l"))
  legend("topright", lty=1, lwd=1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", 
                "Sub_metering_2", "Sub_metering_3"), bty="n")
  
  #4
  with(df, plot(DateTime, Global_reactive_power, type="l", xlab="datetime"))
  
})

dev.off() ##close the png file device