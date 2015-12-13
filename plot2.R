  ##plot2.R

##call the create data program
source("download.R")

##open graphics device
png(file = "plot2.png", width = 480, height = 480, units = "px") 

##Now plot the data
plot(df$DateTime, df$Global_active_power, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")


dev.off() ##close the png file device
