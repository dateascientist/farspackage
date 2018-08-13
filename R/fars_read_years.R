#' Create a list of month and years from a FARS file/dataset.
#'
#' This function will return a list of month and years for all rows that are
#' present in a FARS data set. The \code{years} argument can be a vector or list
#' of year in integer format. An error will be thrown if a year and corresponding
#' file does not exist.
#'
#' @param years A vector or list of years to select.
#'
#' @return This function returns a list of month and years for each row of the
#' FARS dataset.
#'
#' @examples
#' \dontrun{fars_read_years(2015)}
#'
#' @export
fars_read_years <- function(years) {
  lapply(years, function(year) {
    file <- make_filename(year)
    tryCatch({
      dat <- fars_read(file)
      dplyr::mutate(dat, year = year) %>%
        dplyr::select(MONTH, year)
    }, error = function(e) {
      warning("invalid year: ", year)
      return(NULL)
    })
  })
}
