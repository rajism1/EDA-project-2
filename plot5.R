library(ggplot2)
## loading data in R
pm <- readRDS("summarySCC_PM25.rds")

## subsetting  to get motor vehicle related total emissions data for Baltimore
pm.sub <-subset(pm , pm$type == "ON-ROAD" & pm$fips =="24510")

##aggregating according to year in which reading taken and taking sum of emissions
pm.sum <- aggregate(Emissions ~year ,data = pm.sub ,  FUN = sum)

##plotting as PNG file
png("plot5.png", width = 480, height = 480)
qplot(year , Emissions , data = pm.sum , geom ="line" ,
      main ="motor vehicle related total emissions in Baltimore County")
dev.off()