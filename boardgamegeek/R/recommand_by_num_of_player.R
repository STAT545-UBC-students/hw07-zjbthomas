#' @title Recommand board games
#'
#' @description
#' Recommand board games based on number of players, play time, or age range.
#'
#' @usage
#' recommand_by_num_of_player(min, max)
#' recommand_by_time(min, max)
#' recommand_by_age(age)
#'
#' @param min a number.
#'
#' @param max a number.
#'
#' @param age a number to represent minimum age.
#'
#' @return
#' This function returns a data frame containing board games fulfill the searching requirements.
#'
#' @examples
#' recommand_by_num_of_player(1, 4)
#' recommand_by_time(0, 60)
#' recommand_by_age(12)
#'
#' @rdname recommand
#'
#' @export

recommand_by_num_of_player <- function(min = NA, max = NA) {
  if (is.na(min) & is.na(max)) {
    # return all games if no argument is defined
    return(bgg_db)
  }
  # if no minimum player
  if (is.na(min)) {
    return(
      bgg_db %>%
        dplyr::filter(max_players <= max)
    )
  }
  # if no maximum player
  if (is.na(max)) {
    return(
      bgg_db %>%
        dplyr::filter(min_players >= min)
    )
  }
  # both min and max defined
  return(
    bgg_db %>%
      dplyr::filter(max_players <= max & min_players >= min)
  )
}
