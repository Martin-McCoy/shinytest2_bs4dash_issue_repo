#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(bs4Dash)

ui <- bs4Dash::dashboardPage(
  bs4Dash::dashboardHeader(title = "Basic dashboard"),
  bs4Dash::dashboardSidebar(),
  bs4Dash::dashboardBody(
    # Boxes need to be put in a row (or column)
    shiny::fluidRow(
      bs4Dash::box(shiny::plotOutput("plot1", height = 250)),

      bs4Dash::box(
        title = "Controls",
        shiny::sliderInput("slider", "Number of observations:", 1, 100, 50)
      )
    )
  )
)

server <- function(input, output) {
  set.seed(122)
  histdata <- stats::rnorm(500)

  output$plot1 <- shiny::renderPlot({
    data <- histdata[seq_len(input$slider)]
    graphics::hist(data)
  })
}

shiny::shinyApp(ui, server)
