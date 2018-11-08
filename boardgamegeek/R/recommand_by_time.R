#' @rdname recommand
#'
#' @export

recommand_by_time  <- function(min = NA, max = NA) {
  if (is.na(min) & is.na(max)) {
    # return all games if no argument is defined
    return(bgg_db)
  }
  # if no minimum player
  if (is.na(min)) {
    return(
      bgg_db %>%
        dplyr::filter(max_time <= max)
    )
  }
  # if no maximum player
  if (is.na(max)) {
    return(
      bgg_db %>%
        dplyr::filter(min_time >= min)
    )
  }
  # both min and max defined
  return(
    bgg_db %>%
      dplyr::filter(max_time <= max & min_time >= min)
  )
}
