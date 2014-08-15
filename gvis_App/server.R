# Contributed by Joe Cheng, February 2013
# Requires googleVis version 0.4.0 and shiny 0.4.0 or higher
# server.R
library(googleVis)
library(shiny)
shinyServer(function(input, output) {        
        output$view <- renderGvis({
                x <- input$x
                x <- seq(x[1], x[2], 0.1)
                y <- sin(x)
                df <- data.frame(x=x, y=y)
                gvisLineChart(df, "x", "y", )
        })
})