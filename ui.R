#ui.R
library(shiny)

genre_list <- c("Action", "Adventure", "Animation", "Children", "Comedy", "Crime","Documentary",
                "Drama", "Fantasy", "Film.Noir", "Horror", "Musical", "Mystery","Romance", "Sci.Fi",
                "Thriller", "War", "Western")
shinyUI(fluidPage(
  titlePanel("Movie Recommendation for you"),
  
  fluidRow(
    
    column(4, h4("Step 1: Select the movie genre you like:"),
           wellPanel(
             
             selectInput("input_genre", "Most like movie genre (Genre #1)", genre_list),
             selectInput("input_genre2", "Moderate like movie genre (Genre #2)", genre_list, selected = "Adventure"),
             selectInput("input_genre3", "Least like movie genre (Genre #3)", genre_list, selected = "Western")
           ))
  ),
  
  fluidRow(
    
    column(4, h4("Step 2: Select movies you like based on the genres you chose:"),
           wellPanel(
             # This outputs the dynamic UI component
             uiOutput("ui"),
             uiOutput("ui2"),
             uiOutput("ui3")
           ))
  ),
  
  fluidRow(
    
    column(4,
           h4("Based on your likes ..."),
           tableOutput("table")
    )
  ),  
  
  fluidRow(
    column(4,
           helpText("Thank you for choosing WebFlix's Movie Streaming Service")
    )
  )
))