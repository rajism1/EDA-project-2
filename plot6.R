library(ggplot2)
## loading data in R
pm <- readRDS("summarySCC_PM25.rds")

## subsetting  to get Baltimore City and Los Angeles  data
nsub <- subset(pm, (fips == "06037" | fips == "24510") & type == "ON-ROAD")

##aggregating according to city and year in which reading taken and taking sum of emissions
nsub2 <- aggregate(Emissions~year+fips , data = nsub , FUN = sum)

##plotting as PNG file
png("plot6.png" , width = 480 , height = 480)
qplot(year , Emissions , data = nsub2 , col = fips , geom ="line" , ylab = "Motor vehicle related total pm2.5 emissions",
      main= "Baltimore City (24510) VS Los Angeles (06037)")
dev.off()