#' Shiny app server object
#'
#' @import shiny

# create the shiny application user interface
shinyAppUI <- fluidRow(title = 'Minimal app',
                       numericInput("num_input", "Please insert a number n:", 0),
                       textOutput('text_out')
                      )
