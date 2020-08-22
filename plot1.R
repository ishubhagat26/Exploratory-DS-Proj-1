dataFile <- "D:/Data Science Working directory/household_power_consumption.txt"

data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")#reading data

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] #subsetting data

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power) #casting char to numeric

png("plot1.png", width=480, height=480)

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") #plotting the plot
dev.off()