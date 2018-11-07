#' @title Reorder a factor in descending order
#'
#' @description Reorder a factor in descending order.
#'
#' @usage
#' freorder(f)
#'
#' @param f a factor. An error is raised if it is not a factor.
#'
#' @return
#' This function returns a factor in descending order.
#' An error is raised if the input is not a factor.
#'
#' @examples
#' freorder(factor(c("s", "t", "a"))) # Levels: t s a
#'
#' @export

freorder <- function(f) {
  # check if the input is a factor or not
  fcheck(f)
  # return a factor in descending order
  return(reorder(f, dplyr::desc(f)))
}
