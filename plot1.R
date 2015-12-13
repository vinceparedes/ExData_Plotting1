##plot1.R

##call the create data program
source("download.R")

##open graphics device
png(file = "plot1.png", width = 480, height = 480, units = "px") 

##plot the data
hist(df$Global_active_power, ylim=c(0,1200), main = "Global Active Power",
     xlab="Global Active Power (kilowatts)", col = "red", pin = c(4,4.5))


dev.off() ##close the png file device
