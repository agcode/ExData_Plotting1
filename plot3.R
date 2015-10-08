## The unzipped file 
file<-"household_power_consumption.txt"
## Read data into a table
x<-read.table(file,na.strings="?",skip=1,col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),sep=";")
## Convert Date and time appropriately 
x$Date<-as.Date(x$Date,format="%d/%m/%Y")
x$Time<-strftime(strptime(x$Time,format="%H:%M:%S"),"%H:%M:%S")
## Subset only the data with dates ranging between 2007-02-01 and 2007-02-02
y<-subset(x,Date >="2007-02-01" & Date <= "2007-02-02")
## Generate the plot of the histogram and save as a png
png("plot3.png",width= 480,height= 480,units= "px")
plot(as.POSIXct(paste(y$Date, y$Time), format="%Y-%m-%d %H:%M:%S"),y$Global_active_power,type="n",ylab="Global Active Power (kilowatts)",xlab="",main="")
dev.off()