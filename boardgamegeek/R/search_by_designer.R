#' @rdname search
#'
#' @export

search_by_designer <- function(d) {
  return(
    bgg_db %>%
      dplyr::filter(stringr::str_detect(designer, d))
  )
}
