##dowload code for assignment

#This library is well worth getting
library(downloader)

## Change this to fit your directory
setwd("/Users/vinceparedes/gitStuff/datasciencecoursera/ExData_Plotting1/ExData_Plotting1/")

##Use the two lines below only once 
#download("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", dest="powerCons.zip", mode="wb") 
#unzip ("powerCons.zip", exdir = "./")

fileName <- "household_power_consumption.txt"

##Set column names because we are skipping them in the read
columnNames <- c("Date","Time","Global_active_power","Global_reactive_power", "Voltage", "Global_intensity",
                 "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

##To avoid reading over 2 million records, I did a search on the text file to find beginning
##and ending lines for the data of interest.
df0 <- read.delim(fileName, sep = ";", stringsAsFactors = FALSE, 
                  na.strings = "?", skip = 66636, nrows = 2880, col.names = columnNames )

##transform date and time columns
df <- transform(df0, Date=as.Date(df0$Date, format="%d/%m/%Y"), 
                Time=strptime(df0$Time, format="%H:%M:%S"), 
                DateTime=as.POSIXlt(paste(df0$Date,df0$Time), format = "%d/%m/%Y %H:%M:%S"))