library(shiny)
library(ggplot2)
library(googleVis)

# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$view1 <- renderGvis({
    
    gvisGauge(df[df$Label == input$val,], 
              options=list(min=0, max=10, 
                           greenFrom=8, greenTo=10, 
                           yellowFrom=6, yellowTo=8,
                           redFrom=0, redTo=6, 
                           width=400, height=400)
              );
      
  })
 
  output$view2 <- renderPlot({
    
    df_rand <- data.frame(x = 0:input$slider,
                          y = 0:input$slider + rnorm(n = input$slider+1, mean = 0.0, sd = 2.0),
                          z = runif(input$slider+1, 1, 3)
    )
    
    p <- ggplot(df_rand, 
                aes(x = df_rand$x, 
                    y = df_rand$y,
                    size = df_rand$z, 
                    col = df_rand$z)
                ) +
      geom_point() +
      xlab("Label")
      print(p)
  })
   
}

