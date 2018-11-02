#' square server function
#'
#' @export square
#'
#' @return shiny application object
#'
#' @param input provided by shiny
#' @param output provided by shiny
#' @param session provided by shiny

square <- function(num) {
  num^2
}
