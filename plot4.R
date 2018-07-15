library(ggplot2)
## loading data in R
pm <- readRDS("summarySCC_PM25.rds")
sccode <- readRDS("Source_Classification_Code.rds")

## subsetting  to get coal related sources data
sccode.sub <- sccode[grepl("Coal", sccode$Short.Name),]
pm.sub <- pm[pm$SCC %in% sccode.sub$SCC,]

##aggregating according to type of source and year in which reading taken and taking sum of emissions
pm.sum <- aggregate(Emissions ~ year + type , data = pm.sub , FUN = sum)

##plotting as PNG file
png("plot4.png")
qplot(y = Emissions , x = year , data = pm.sum , col = type , geom = "line" , main = "Coal-Related PM2.5 Emissions" )
dev.off()