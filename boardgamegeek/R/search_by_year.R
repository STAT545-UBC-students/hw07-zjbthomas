#' @rdname search
#'
#' @export

search_by_year <- function(y) {
  return(
    bgg_db %>%
      dplyr::filter(year == y)
  )
}
