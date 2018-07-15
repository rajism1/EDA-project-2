Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health.\
In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. \
Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI).

The data for this assignment are available as a single zip file:https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip

The zip file contains two files: \
1)PM2.5 Emissions Data file : contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year

fips: A five-digit number (represented as a string) indicating the U.S. county\
SCC: The name of the source as indicated by a digit string (see source code classification table)\
Pollutant: A string indicating the pollutant\
Emissions: Amount of PM2.5 emitted, in tons\
type: The type of source (point, non-point, on-road, or non-road)\
year: The year of emissions recorded

2)Source Classification Code Table : provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source.

each R code answers a particular question:-\
plot 1.R :Have total emissions from PM2.5 decreased in the United States from 1999 to 2008\
plot2.R :Have total emissions from PM2.5 decreased in the  Baltimore City, Maryland (fips==24510) from 1999 to 2008?\
plot3.R :type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City\
plot4.R :Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?\
plot5.R :How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?\
plot6.R :Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips==06037). Which city has seen greater changes over time in motor vehicle emissions?
