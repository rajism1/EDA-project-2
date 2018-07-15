library(ggplot2)

## loading data in R
pm <- readRDS("summarySCC_PM25.rds")

## subsetting  to get Baltimore County data
bcdata <- subset(pm , fips == "24510")

##aggregating according to type of source and year in which reading taken and taking sum of emissions
sumbytype=aggregate(Emissions ~ year+ type, data=bcdata, sum, na.rm=TRUE)

##plotting as PNG file
png("plot3.png", width = 480, height = 480)
qplot(year , Emissions ,data = sumbytype, col = type , geom = "line") + ggtitle("PM2.5 Emissions in Baltimore County by type")
dev.off()