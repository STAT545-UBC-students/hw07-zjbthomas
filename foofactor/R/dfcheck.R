#' @title Check whether an input is a data frame or not
#'
#' @description
#' Check if an input is a data frame or not. This is a internal function.
#'
#' @usage
#' dfcheck(x)
#'
#' @param x anything. An error is raised if it is not a data frame
#'
#' @return
#' This function returns nothing. An error is raised if the input is not a data frame

dfcheck <- function(x) {
  # check if the input is a data frame or not
  if (!is.data.frame(x)) {
    stop("Function requires a data frame instead of a ", class(x)[1])
  }
}
