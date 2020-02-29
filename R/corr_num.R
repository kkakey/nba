#' NBA Stats Correlation Matrix
#'
#' This function allows you input a year and analyze
#' the correlation between various NBA stats.
#' @param year Input year of interest
#' @keywords nba
#' @export
#' @import(dplyr)
#' @import(purrr)
#' @import(corrplot)
#' @import(magrittr)
#' @examples
#' corr_num()

corr_num <- function(year) {

  correlation <- nba_df %>%
    dplyr::filter(Year==year) %>%
    purrr::keep(., is.numeric) %>%
    stats::na.omit(.) %>%
    dplyr::select(-Year) %>%
    stats::cor(.)

  plot <- corrplot::corrplot(correlation, method="circle",order="hclust",type="upper",
           tl.col="black", tl.srt=50,insig = "blank", tl.cex=.5)
  return(c(correlation, plot))
}
