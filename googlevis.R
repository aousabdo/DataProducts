#########
suppressPackageStartupMessages(library(googleVis))
M <- gvisMotionChart(Fruits, "Fruit", "Year", options = list(width = 1200, height = 800))
plot(M)

x <- seq(1,10,0.1)
y <- sin(x)
df <- data.frame(x=x, y=y)
Sin <- gvisLineChart(data.frame(x=x, y=y), "x", "y", options = list(width=800, height=600))
plot(Sin)
###########

G <- gvisGeoChart(Exports, "Country", "Profit",options=list(width=400, height=200))
T1 <- gvisTable(Exports,options=list(width=400, height=600))
M <- gvisMotionChart(Fruits, "Fruit", "Year", options=list(width=800, height=800))
GT <- gvisMerge(G,T1, horizontal=FALSE)
GTM <- gvisMerge(GT, M, horizontal=TRUE,tableOptions="bgcolor=\"#CCCCCC\" cellspacing=10")
plot(GTM)
