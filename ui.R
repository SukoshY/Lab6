library(shiny)

source("script.R")

shinyUI(pageWithSidebar(
  headerPanel("Ivano-Frankivsk Temperature (01.11.2016-16.11.2017)"),
  
  sidebarPanel(
    selectInput("month", "Select months:", choices=months()),
    dateInput("date", "Select the day:", value = "2017-11-16") 
  ),
  
  mainPanel(
    plotOutput("plot"),
    hr(),
    textOutput("text")
  )
))