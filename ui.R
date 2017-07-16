library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Upper and Lower Weight Limits Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      numericInput('height', 'Enter your height in centimeters', 180),
      submitButton('Calculate Weight Limits')
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3('Your Lower Weight Limit is:'),
      verbatimTextOutput("result1"),
      h3('Your Upper Weight Limit is:'),
      verbatimTextOutput("result2")
    )
  )
))
