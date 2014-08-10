library(rCharts)
haireye = as.data.frame(HairEyeColor)
subset(haireye, Sex == 'Male')
n1 <- nPlot(Freq ~ Hair, group = 'Eye', type = 'multiBarChart',data = subset(haireye, Sex == 'Male'))
n1

n1$save("rcharts_example_1.html")
n1HTML <- n1$html()
#########
names(iris) = gsub("\\.", "", names(iris))
r1 <- rPlot(SepalLength ~ SepalWidth | Species, data = iris, color = 'Species', type = 'point')
r1
r1$save('rcharts_example_2.html', cdn = TRUE)

#########
hair_eye = as.data.frame(HairEyeColor)
r2 <- rPlot(Freq ~ Hair | Eye, color = 'Eye', data = hair_eye, type = 'bar')
r2
r2$save('rcharts_example_3.html', cdn = TRUE)

#########

r3 <- rPlot(mpg ~ wt | am + vs, data = mtcars, type = "point", color = "gear")
r3
r3$print("chart1") # print out the js 
r3$save('myPlot.html') #save as html file
r3$publish('myPlot', host = 'gist') # save to gist, rjson required
r3$publish('myPlot', host = 'rpubs') # save to rpubs

###########
data(economics, package = "ggplot2")
econ <- transform(economics, date = as.character(date))
m1 <- mPlot(x = "date", y = c("psavert", "uempmed"), type = "Line", data = econ)
m1$set(pointSize = 0, lineWidth = 1)
m1$save('fig/m1.html', cdn = TRUE)
m1
