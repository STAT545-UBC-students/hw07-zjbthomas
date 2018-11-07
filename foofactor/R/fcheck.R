#' @title Check whether an input is a factor or not
#'
#' @description
#' Check if an input is a factor or not. This is a internal function.
#'
#' @usage
#' fcheck(x)
#'
#' @param x anything. An error is raised if it is not a factor.
#'
#' @return
#' This function returns nothing. An error is raised if the input is not a factor.

fcheck <- function(x) {
  # check if the input is a factor or not
  if (!is.factor(x)) {
    stop("Function requires a factor instead of a ", class(x)[1])
  }
}
