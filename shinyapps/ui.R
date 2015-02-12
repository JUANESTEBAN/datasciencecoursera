library(shiny)
shinyUI(
pageWithSidebar(
  headerPanel("Body Mass Index"),
  sidebarPanel(
  numericInput('weight','Enter your weight in kg',60,min=49,max=200,step=0.1),
  numericInput('height','Enter your height in m',1.40,min=0.3,max=2.20,step=0.01),
  submitButton('Submit')
  ),
  mainPanel(
  tabsetPanel(tabPanel("Body Mass Prediction",
  h3('Results of prediction'),
  h4('You entered a weight of'),
  verbatimTextOutput('inputValue1'),
  h4('You entered a height of'),
  verbatimTextOutput('inputValue2'),
  h4('Your resulting Body Mass Index is'),
  verbatimTextOutput('prediction')),
  tabPanel("Documentation")
  ) 
  )
  )
)