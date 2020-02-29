#' NBA Player with Most Scored Points
#'
#' This function allows you input a year and see which
#' NBA player scored the most points for that year.
#' @param year Input year of interest
#' @keywords nba
#' @export
#' @import(dplyr)
#' @examples
#' year_player()

year_player <- function(year) {
  top_pts <- nba_df %>%
    dplyr::filter(Year==year) %>%
    dplyr::arrange(desc(PTS)) %>%
    utils::head(1) %>%
    dplyr::select(Player, PTS)
  return(top_pts)
}


