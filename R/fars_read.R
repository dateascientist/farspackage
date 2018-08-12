#' Read & Create FARS Data Frame
#'
#' This function will create a tibble data.frame based on a FARS filename passed
#' as the \code{filename} argument.
#'
#' @param filename A character string providing the FARS filename to read
#'
#' @return This function returns a tibble data frame.
#'
#' @examples
#' \dontrun{fars_read("accident_2013.csv.bz2")}
#'
#' @export
fars_read <- function(filename) {
  if(!file.exists(filename))
    stop("file '", filename, "' does not exist")
  data <- suppressMessages({
    readr::read_csv(filename, progress = FALSE)
  })
  dplyr::tbl_df(data)
}
