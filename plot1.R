## loading data in R
pm <- readRDS("summarySCC_PM25.rds")

##aggregating according to year in which reading taken and taking sum of emissions
pm.sum <- aggregate(Emissions ~year,data = pm , sum)

##plotting as PNG file
png("plot1.png", width = 480, height = 480)
with(pm.sum, plot(y=Emissions , x=year  , xlab = "year", ylab = "pm2.5 emissions " ,main = " Total PM2.5 Emissions over the years  ", 
                 pch = 19 , col =" red", type = "o" , lty = 6 ))
dev.off()