library(shiny)
library(shinythemes)


# Use a fluid Bootstrap layout
fluidPage(
  
  theme = shinytheme("journal"),
  
  # Define the header panel
  headerPanel("Tabsets"),
  
  # Give the page a title
  titlePanel("Title"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar
    sidebarPanel(
      selectInput("val", "1. Value:", choices=df$Label),
      sliderInput("slider", "Slider Input", value = 10, min = 1, max(100)),
      checkboxInput("check", "Checkbox", value = TRUE),
      radioButtons("radio", "Radio Button", 
                   choices = list("First" = "first", "Second" = "second", "Third" = "third"), 
                   selected = "first")
    ),
    
    # Create a spot for the barplot
    mainPanel(
      tabsetPanel(
          tabPanel("First", value = "first", htmlOutput("view1")),
          tabPanel("Second", value = "second", plotOutput("view2")),
          selected = "first"
        )
    )
  
  )

)

