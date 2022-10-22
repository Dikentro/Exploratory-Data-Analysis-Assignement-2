veh <- grepl("vehicle", SCC$SCC.Level.Two, ignore.case=TRUE)
vehSCC <- SCC[veh,]$SCC
vehNEI <- NEI[NEI$SCC %in% vehSCC,]

baltimoreVehiclesNEI <- vehNEI[vehNEI$fips==24510,]

ggp3 <- ggplot(baltimoreVehiclesNEI,aes(factor(year),Emissions)) +
        geom_bar(stat="identity",fill="orange",width=0.75) +
        theme_bw() +  guides(fill="none") +
        labs(x="year", y=expression("Total PM"[2.5]*" Emission (10^5 Tons)")) + 
        labs(title=expression("PM"[2.5]*" Motor Vehicle Source Emissions in Baltimore from 1999-2008"))

print(ggp3)

dev.off()

#REPLY: Emissions from motor vehicle sources have dropped from 1999-2008 in Baltimore City