NEI <- readRDS("C:/Users/diken/Έγγραφα/R/exdata_data_NEI_data/summarySCC_PM25.rds")
SCC <- readRDS("C:/Users/diken/Έγγραφα/R/exdata_data_NEI_data/Source_Classification_Code.rds")
total_year<-tapply(NEI$Emissions, NEI$year, sum, na.rm=TRUE)
par(mfrow=c(1,1),mar=c(5,5,4,2))
barplot(total_year/1000, names.arg = names(total_year), col="red", main="Emissions of PM2.5 by year", 
        xlab = "Year", ylab="Amount of emissions (kilotons)", ylim = range(0,total_year/1000) * 1.1)
dev.off()

#REPLY: Total emissions have decreased in the US from 1999 to 2008.