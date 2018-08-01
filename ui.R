library(shiny)
library(shinythemes)

shinyUI(fluidPage(theme = shinytheme("paper"),
    titlePanel("Predictive Text"),
    
    sidebarLayout(
        sidebarPanel(
            helpText("The purpose of this App is to generate a prediction of the next word in a given context."),
            helpText("To start, just type a word, and the next predicted word will appear below it."),
            helpText("Keep typing to get new predictions!")
        ),
    
    mainPanel(
        textInput("string", "Enter text here:", ""),
        textOutput("out")
    ))
))
