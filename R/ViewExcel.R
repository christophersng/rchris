#' View dataframe in a csv
#'
#' @param df dataframe
#' @param file temporary file name
#'
#' @return temporary csv
#' @export
#'
#' @examples
#' ViewExcel(datasets::mtcars)
ViewExcel <- function(df = .Last.value, file = tempfile(fileext = ".csv")) {
  df <- try(as.data.frame(df))
  stopifnot(is.data.frame(df))
  utils::write.csv(df, file = file)
  system(paste0("open ",file))
}


