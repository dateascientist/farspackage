#' Create a summary of FARS data set by month and year(s)
#'
#' This function will return a summary of total number of fatalities per month
#' and year. The \code{years} argument can be a vector or list
#' of year(s) in integer format.
#'
#' @param years A vector or list of years to select.
#'
#' @return This function returns a summary tibble data frame of the accidents
#' per month.
#'
#' @examples
#' \dontrun{fars_summarize_years(2015)}
#'
#' @export
fars_summarize_years <- function(years) {
  dat_list <- fars_read_years(years)
  dplyr::bind_rows(dat_list) %>%
    dplyr::group_by(year, MONTH) %>%
    dplyr::summarize(n = n()) %>%
    tidyr::spread(year, n)
}
