#' Oldest NBA Player
#'
#' This function allows you input a year and see which
#' NBA player was oldest in that year.
#' @param year Input year of interest
#' @keywords nba
#' @export
#' @import dplyr
#' @import tidyr
#' @import magrittr
#' @examples
#' year_oldestplayer()

year_oldestplayer <- function(year) {
  age_old <- nba_df %>%
    dplyr::filter(Year==year) %>%
    tidyr::separate(Player, into = c("first_name", "last_name"), sep = " ", remove=F) %>%
    dplyr::arrange(desc(Age), last_name) %>%
    utils::head(1) %>%
    dplyr::select(Player, Age, Year)
  return(age_old)
}
