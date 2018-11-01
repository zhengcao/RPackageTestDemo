#' launches the RPackageTestDemo app
#'
#' @export app
#'
#' @return shiny application object
#'
#' @import shiny

app <- function() {

  ui <- fluidRow(title = 'Minimal app',
                 numericInput("num_input", "Please insert a number n:", 0),
                 textOutput('text_out')
  )

  server <- function(input, output, session) {
    result <- reactive(input$num_input ^ 2)
    output$text_out <- renderText(
      paste("The square of the number n is: n2 =", result())
    )
  }

  shinyApp(ui, server)
}

app()

