library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Environment variable example:"),
    
    mainPanel(
          h1(class='display-1', "Env variable: ", textOutput('x'))
        )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$x <- renderText({
       Sys.getenv('MY_ENV_VARIABLE')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
