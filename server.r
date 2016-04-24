#server.R
library(shiny)
library(datasets)
library(ggplot2)

shinyServer(function(input, output) {
  
 
  output$graph <- renderPlot({
    
    pest<- input$var
    pestsub <- subset( InsectSprays, InsectSprays$spray==pest)
    hist(pestsub$count,main =  "Count of insects still living through 12 trials", 
         col = "green",xlab = "insects still on plants", breaks = c(0:30))
    
  })
  
})