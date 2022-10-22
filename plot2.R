NEI_Baltimore<-subset(NEI, fips == "24510")
Baltimore_year<-tapply(NEI_Baltimore$Emissions, NEI_Baltimore$year, sum, na.rm=TRUE)
par(mfrow=c(1,1),mar=c(5,5,4,2))
barplot(Baltimore_year, names.arg = names(Baltimore_year), col="magenta", 
        main="Emissions of PM2.5 by year in Baltimore City", xlab = "Year", 
        ylab="Amount of emissions (tons)", ylim = range(0,Baltimore_year)*1.1)
dev.off()

#REPLY: Total emissions from PM2.5 have decreased in Baltimore City, Maryland from 1999 to 2008.