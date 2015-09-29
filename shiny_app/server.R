library(shiny)
library(HistData)
library(caret)
data(Galton)
modFit <- train(child ~ parent, method="glm", data=Galton)

shinyServer(function(input, output) {
    
    output$prediction <- renderPrint ({
        parent = input$parent
        predict(modFit,data.frame(parent))})
}
)
