# ui.R
shinyUI(pageWithSidebar(
        headerPanel("Example 1: scatter chart"),
        sidebarPanel(
                sliderInput("x", "x-value", min=-10, max=10, value = c(-5,5), step = 0.1)
        ),
        mainPanel(
                htmlOutput("view")
        )
))