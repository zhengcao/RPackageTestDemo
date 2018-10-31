#' Shiny app server function
#'
#' @param input provided by shiny
#' @param output provided by shiny
#' @param session provided by shiny
#'
#' @import shiny


# Define server logic required to calculate the square of a number
shinyAppServer <- function(input, output, session) {
  result <- reactive(square(input$num_input))
  output$text_out <- renderText(
    paste("The square of the number n is: n2 =", result())
  )
}
