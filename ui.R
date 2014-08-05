shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Diabetes prediction"),
                
                sidebarPanel(
                        numericInput('glucose', 'Glucose mg/dl', 90, min = 50, max = 200, step = 5),
                        dateInput(inputId =  "date", label = "Date:"),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Results of prediction'),
                        h3('On this date:'),
                        verbatimTextOutput("inputDate"),
                        h4('You entered'),
                        verbatimTextOutput("inputValue"),
                        h4('Which resulted in a prediction of '),
                        verbatimTextOutput("prediction")
                )
        )
)