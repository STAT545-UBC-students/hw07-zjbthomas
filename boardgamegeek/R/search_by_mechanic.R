#' @rdname search
#'
#' @export

search_by_mechanic <- function(m) {
  return(
    bgg_db %>%
      dplyr::filter(stringr::str_detect(mechanic, m))
  )
}

