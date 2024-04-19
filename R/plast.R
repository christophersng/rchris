#' Plot the last plot
#'
#' @param plot.name plot object
#' @param loc output location
#' @param w width
#' @param h height
#'
#' @return System output pdf
#' @export
#'
#' @examples
#' plast()
plast <- function(plot.name = "",loc = "/Users/csng/work/rplots/", w=5, h=5){
  pl(.Last.value,plot.name = plot.name,loc = loc, w = w, h = h)
}
