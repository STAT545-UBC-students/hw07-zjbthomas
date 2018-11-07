#' @title Search board games
#'
#' @description
#' Search board games by their ID, part of name, released year,
#' one of their mechanic, one of their category, or designer.
#'
#' @usage
#' search_by_game_id(id)
#' search_by_name(name)
#' search_by_year(year)
#' search_by_mechanic(mechanic)
#' search_by_category(category)
#' search_by_designer(designer)
#'
#' @param id a number.
#'
#' @param name a string.
#'
#' @param year a number.
#'
#' @param mechanic a string.
#'
#' @param category a string.
#'
#' @param designer a string.
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
