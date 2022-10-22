library(ggplot2)

baltimoreNEI <- NEI[NEI$fips=="24510",]
aggTotalsBaltimore <- aggregate(Emissions ~ year, baltimoreNEI,sum)


ggp <- ggplot(baltimoreNEI,aes(factor(year),Emissions,fill=type)) +
        geom_bar(stat="identity") +
        theme_bw() + guides(fill="none")+
        facet_grid(.~type,scales = "free",space="free") + 
        labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) + 
        labs(title=expression("PM"[2.5]*" Emissions, Baltimore City 1999-2008 by Source Type"))

print(ggp)

dev.off()

#REPLY: The non-road, non-point, on-road source types have all been decreased over this time frame in Baltimore City.
        #The point source saw a significant increase until 2005, but then it decresed again to almost the value it started.
        #This means that overall, the point source was slightly increased over this time frame. 