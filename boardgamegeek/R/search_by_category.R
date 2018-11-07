#' @rdname search
#'
#' @export

search_by_category <- function(c) {
  return(
    bgg_db %>%
      dplyr::filter(stringr::str_detect(category, c))
  )
}
