#' Create FARS Filename
#'
#' This function will create a file name using the \code{year} argument that
#' will be compatible for use in the other farspackage functions. If a string in
#' integer format is passed, it will be converted to an integer to avoid NA's by
#' coercion.
#'
#' @param year An integer providing the function what year to use in the filename.
#'
#' @return This function returns a string of a file name compatible to other
#' farspackage functions.
#'
#' @examples
#' \dontrun{make_filename(2014)}
#'
#' @export
make_filename <- function(year) {
  year <- as.integer(year)
  sprintf("accident_%d.csv.bz2", year)
}
