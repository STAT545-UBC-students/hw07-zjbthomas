#' @title Detect whether a factor should be character
#'
#' @description
#' Check if a factor should be character based on the fact that
#' a character should have a length equals to its unique values, while a factor should not.
#'
#' @usage
#' fdetect(f)
#'
#' @param f a factor. An error is raised if it is not a factor.
#'
#' @return
#' This function returns a boolean. It returns \code{TRUE} if the input is a factor,
#' \code{FALSE} if the input is a character. An error is raised if the input is not a factor.
#'
#' @examples
#' fdetect(factor(c("s", "t", "a", "t"))) # TRUE
#' fdetect(factor(c("s", "t", "a"))) # FALSE
#'
#' @export

fdetect <- function(f) {
  # check if the input is a factor or not
  fcheck(f)
  # return if the number of unique values NOT equals to the length of input
  return(length(unique(f)) != length(f))
}
