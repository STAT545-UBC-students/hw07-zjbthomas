#' @rdname search
#'
#' @export

search_by_name <- function(n) {
  return(
    bgg_db %>%
      dplyr::filter(stringr::str_detect(names, n))
  )
}
