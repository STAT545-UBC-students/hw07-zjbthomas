#' @title Search board games
#'
#' @description
#' Search board games by their ID, part of name, released year,
#' one of their mechanic, one of their category, or designer.
#'
#' @usage search_by_game_id(id)
#'
#' @param id a number for game ID.
#'
#' @return
#' This function returns a data frame containing board games fulfill the searching requirements.
#'
#' @examples
#' search_by_game_id(1774430)
#' search_by_name("Gloomhaven")
#' search_by_year(2017)
#' search_by_mechanic("Role Playing")
#' search_by_category("Adventure")
#' search_by_designer("Isaac Childres")
#'
#' @rdname search
#'
#' @export

search_by_game_id <- function(id) {
  return(
    bgg_db %>%
      dplyr::filter(game_id == id)
  )
}

#' @usage search_by_name(n)
#'
#' @param n a string for name.
#'
#' @rdname search
#'
#' @export

search_by_name <- function(n) {
  return(
    bgg_db %>%
      dplyr::filter(stringr::str_detect(names, n))
  )
}

#' @usage search_by_year(y)
#'
#' @param y a number for year.
#'
#' @rdname search
#'
#' @export

search_by_year <- function(y) {
  return(
    bgg_db %>%
      dplyr::filter(year == y)
  )
}

#' @usage search_by_mechanic(m)
#'
#' @param m a string for mechanic.
#'
#' @rdname search
#'
#' @export

search_by_mechanic <- function(m) {
  return(
    bgg_db %>%
      dplyr::filter(stringr::str_detect(mechanic, m))
  )
}

#' @usage search_by_category(c)
#'
#' @param c a string for category.
#'
#' @rdname search
#'
#' @export

search_by_category <- function(c) {
  return(
    bgg_db %>%
      dplyr::filter(stringr::str_detect(category, c))
  )
}

#' @usage search_by_designer(d)
#'
#' @param d a string for designer.
#'
#' @rdname search
#'
#' @export

search_by_designer <- function(d) {
  return(
    bgg_db %>%
      dplyr::filter(stringr::str_detect(designer, d))
  )
}
