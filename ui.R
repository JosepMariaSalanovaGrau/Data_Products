library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Upper and Lower Weight Limits Calculator"),
  
  mainPanel(
  h4('This shiny application calculates the Upper and Lower Weight Limits, which are the weights above and below which a person is considered that it has overweight and underweight respectively.
  
  The Upper and Lower Weight limits are calculated using the height of the person. Taking as reference body mass indexes equal to  18.5 and 25 as the lower and upper limits for a healthy weight these bounds are claculated.'
  )),
  
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
