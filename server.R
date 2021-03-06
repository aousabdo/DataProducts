diabetesRisk <- function(glucose) glucose / 200

library(shiny)
shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$glucose})
                output$prediction <- renderPrint({diabetesRisk(input$glucose)})
                output$inputDate <- renderPrint(input$date)
        }
)