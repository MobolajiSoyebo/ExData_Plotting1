## PLot Histogram Graph
## Set working directory to the location of the downloaded file
setwd("C:\\Data Science Course\\Exploratory Data Analysis\\Project 1") 
## Read the downloaded data file
Datafile <- read.csv("household_power_consumption.txt",header = TRUE,sep = ";")
## Format the date column
Datafile$Date = as.Date(strptime(Datafile$Date, "%d/%m/%Y"))
Subdatafile <- subset(Datafile, subset=(Date >= "2007-02-01" & Date <= "2007-02-02")) 
globalActivePower <- as.numeric(Subdatafile$Global_active_power)

## Plot the graph
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 

## Save Plot Graph as PNG File
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()