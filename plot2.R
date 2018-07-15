## loading data in R
pm <- readRDS("summarySCC_PM25.rds")

## subsetting  to get Baltimore County data
bcdata <- subset(pm , fips == "24510")

##aggregating according to year in which reading taken and taking sum of emissions
pm.sum <- aggregate(Emissions ~year , data = bcdata, FUN = sum )

##plotting as PNG file
png("plot2.png", width = 480, height = 480)
with(pm.sum , plot(y=Emissions , x= year, xlab = "year", 
          ylab = "pm2.5 emissions " , main = "Total PM2.5 Emissions in Baltimore County"
    ,pch = 19 , col =" red" , type = "o" , lty = 6 ))
dev.off()