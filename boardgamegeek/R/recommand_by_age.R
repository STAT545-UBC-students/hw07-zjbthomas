#' @rdname recommand
#'
#' @export

recommand_by_age <- function(min = NA) {
  if (is.na(min)) {
    # return all games if no argument is defined
    return(bgg_db)
  }
  # if min defined
  return(
    bgg_db %>%
      dplyr::filter(age >= min)
  )
}
