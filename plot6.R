vehBaltimoreNEI <- vehNEI[vehNEI$fips == 24510,]
vehBaltimoreNEI$city <- "Baltimore City"
vehLANEI <- vehNEI[vehNEI$fips=="06037",]
vehLANEI$city <- "Los Angeles County"
bothNEI <- rbind(vehBaltimoreNEI,vehLANEI)

ggp4 <- ggplot(bothNEI, aes(x=factor(year), y=Emissions, fill=city)) +
        geom_bar(aes(fill=year),stat="identity") +
        facet_grid(scales="free", space="free", .~city) +
        guides(fill="none") + theme_bw() +
        labs(x="year", y=expression("Total PM"[2.5]*" Emission (Kilo-Tons)")) + 
        labs(title=expression("PM"[2.5]*" Motor Vehicle Source Emissions in Baltimore & LA, 1999-2008"))

print(ggp4)

dev.off()

#REPLY: Los Angeles