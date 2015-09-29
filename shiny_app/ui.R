library(shiny)

shinyUI( pageWithSidebar (
    # Application title
    headerPanel ("Predict a child's height given parents' average height"),
    
    sidebarPanel (
        numericInput('parent', 'Parents\'average height (in)', 68, min = 62, max= 74, step = 1),
        submitButton('Submit')
    ),
    mainPanel (
        h4 ('Child\'s predicted height:'),
        textOutput("prediction")
    )
))
