#' @title Set the levels "as is"
#'
#' @description Set levels of a factor to the order in which they appear in the data.
#'
#' @usage
#' fset(f)
#'
#' @param f a factor. An error is raised if it is not a factor.
#'
#' @return
#' This function returns a factor, whose levels is set to the order of its data.
#' An error is raised if the input is not a factor.
#'
#' @examples
#' fset(factor(c("s", "t", "a"))) # Levels: s t a
#'
#' @export

fset <- function(f) {
  # check if the input is a factor or not
  fcheck(f)
  # return a factor with reset levels
  return(factor(f, as.character(unique(f))))
}
