library(quantmod)
petr4 <- getSymbols("PETR4.SA", src = "yahoo", from = Sys.Date() - 60,  to = Sys.Date())

petr4

petr4 <- subset(PETR4.SA, index(PETR4.SA) >= "2018-01-01")

tail(PETR4.SA$PETR4.SA.Close, 26)
sum(tail(PETR4.SA$PETR4.SA.Close, 26))/26

petr4 <- subset(PETR4.SA, index(PETR4.SA) >= Sys.Date() - 26)

Sys.Date() - 26 




media_26<- rollmean(PETR4.SA$PETR4.SA.Close,26, fill = list(NA, NULL, NA), align = "right")



pbr_mm10 <- rollmean(pbr_mm[,6], 10, fill = list(NA, NULL, NA), align = "right")

pbr_mm[,2]

chartSeries(PETR4.SA)
