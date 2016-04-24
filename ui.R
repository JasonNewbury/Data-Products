shinyUI(fluidPage(
  titlePanel("Pesticide Picker"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Choose your best pesticide, Each letter in the drop down menu represents
               a different pesticide, Count is how many bugs were found on the plant, So lowerer numbers
               are better, the graph will show a histogram of the 12 trials for each pesticide"),
      
      selectInput("var", 
                  label = "Choose a pesticide to display",
                  choices = c("A", "B", "C","D","E","F"),
                  selected = "A")
    ),
    
    mainPanel(
      plotOutput("graph", height = 300)
    )
  )
))