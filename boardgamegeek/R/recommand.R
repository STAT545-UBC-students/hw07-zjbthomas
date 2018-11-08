#' @title Recommand board games
#'
#' @description
#' Recommand board games based on number of players, play time, or age range.
#'
#' @usage recommand_by_num_of_player(min_p, max_p)
#'
#' @param min_p a number for minimum number of players.
#'
#' @param max_p a number for maximum number of players.
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

recommand_by_num_of_player <- function(min_p = NA, max_p = NA) {
  if (is.na(min_p) & is.na(max_p)) {
    # return all games if no argument is defined
    return(bgg_db)
  }
  # if no minimum player
  if (is.na(min_p)) {
    return(
      bgg_db %>%
        dplyr::filter(max_players <= max_p)
    )
  }
  # if no maximum player
  if (is.na(max_p)) {
    return(
      bgg_db %>%
        dplyr::filter(min_players >= min_p)
    )
  }
  # both min and max defined
  return(
    bgg_db %>%
      dplyr::filter(max_players <= max_p & min_players >= min_p)
  )
}

#' @usage recommand_by_time(min_t, max_t)
#'
#' @param min_t a number for minimum play time.
#'
#' @param max_t a number for maximum play time.
#'
#' @rdname recommand
#'
#' @export

recommand_by_time  <- function(min_t = NA, max_t = NA) {
  if (is.na(min_t) & is.na(max_t)) {
    # return all games if no argument is defined
    return(bgg_db)
  }
  # if no minimum player
  if (is.na(min_t)) {
    return(
      bgg_db %>%
        dplyr::filter(max_time <= max_t)
    )
  }
  # if no maximum player
  if (is.na(max_t)) {
    return(
      bgg_db %>%
        dplyr::filter(min_time >= min_t)
    )
  }
  # both min and max defined
  return(
    bgg_db %>%
      dplyr::filter(max_time <= max_t & min_time >= min_t)
  )
}

#' @usage recommand_by_age(min_a)
#'
#' @param min_a a number for minimum age.
#'
#' @rdname recommand
#'
#' @export

recommand_by_age <- function(min_a = NA) {
  if (is.na(min)) {
    # return all games if no argument is defined
    return(bgg_db)
  }
  # if min defined
  return(
    bgg_db %>%
      dplyr::filter(age >= min_a)
  )
}
