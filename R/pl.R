#' Plot function
#'
#' @param x plot object
#' @param plot.name what you want to call it
#' @param loc output location
#' @param w width
#' @param h height
#' @param scaling scaling factor
#'
#' @return System output pdf
#' @export
#'
#' @examples
#' pl(hist(sample(1:50,200,replace=TRUE)))
pl <-  function(x, plot.name = "",loc = "/Users/csng/work/rplots/", w=5, h=5,scaling = 1){
  current_time <- format(Sys.time(), "%Y%m%d_%H%M%S")

  if(plot.name == ""){
    plot.name <-  deparse(substitute(x))[1]
    plot.name <- stringr::str_replace_all(plot.name, "[^[:alnum:]]", "")
  }

  filename <- paste0(loc,"/plot", current_time, plot.name, ".pdf")

  ws = w*scaling
  hs = h*scaling

  pdf(filename, ws, hs)
  print(x)
  dev.off()
  print(filename)
  system(paste0("open -R ",filename))
}


