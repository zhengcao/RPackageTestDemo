#' Shiny app server function
#'
#' @param input provided by shiny
#' @param output provided by shiny
#' @param session provided by shiny
#'
#' @import shiny


# Define server logic required to calculate the square of a number
shinyAppServer <- function(input, output, session) {
  result <- reactive(input$num_input^2)
  output$text_out <- renderText(
    paste("The square of the number n is: n² =", result())
  )
}
