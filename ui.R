library(shiny)


shinyUI(pageWithSidebar(
  headerPanel("Data Science Capstone: Final Project"),
  sidebarPanel(
    h3("Predict the next word"),
    br(),
    
    strong(""),
    textInput("text1", "Type a phrase below:", value = ""),
    br(),
    
    selectInput("words1", "Maximum predicted words to return",
                choices = list("1" = 1, "2" = 2,
                               "3" = 3, "4" = 4,
                               "5" = 5), selected = 3),
    br(),
    
    strong("Click the button below to return the predicted words."),
    actionButton("button1", "Analyze Text")
    
    
  ),
  mainPanel(
    tabsetPanel(
      
      tabPanel("Results",
               
               h4('The phrase that was provided:'),
               verbatimTextOutput("text11"),
               
               h4('The application interprets the text as:'),
               verbatimTextOutput("text22"),
               
               h4('The words predicted based on the phrase provided:'),
               tableOutput("table1")
               
      )
                 ))
               ))