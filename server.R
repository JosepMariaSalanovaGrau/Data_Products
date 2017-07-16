library(shiny)

LWL<-function(height) {18.5*((height/100)^2)}

UWL<-function(height) {25*((height/100)^2)}

shinyServer(
  function(input, output) {
    
    output$result1 <- renderPrint({LWL(input$height)})
    output$result2 <- renderPrint({UWL(input$height)})
  } 
)
