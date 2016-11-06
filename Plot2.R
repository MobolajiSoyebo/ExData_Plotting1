## Plot Graph
## Set working directory to the location of the downloaded file
setwd("C:\\Data Science Course\\Exploratory Data Analysis\\Project 1") 
## Read the downloaded data file
Datafile <- read.csv("household_power_consumption.txt",header = TRUE,sep = ";", na.strings="?")
Datafile$Date <- as.Date(Datafile$Date, format="%d/%m/%Y")
## Subsetting the data
Subdatafile <- subset(Datafile, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## Converting dates
datetime <- paste(as.Date(Subdatafile$Date), Subdatafile$Time)
Subdatafile$Datetime <- as.POSIXct(datetime)

## Plot 2
plot(Subdatafile$Global_active_power~Subdatafile$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
## Save Plot Graph as PNG File
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()