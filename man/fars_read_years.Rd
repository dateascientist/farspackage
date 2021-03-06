% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fars_read_years.R
\name{fars_read_years}
\alias{fars_read_years}
\title{Create a list of month and years from a FARS file/dataset.}
\usage{
fars_read_years(years)
}
\arguments{
\item{years}{A vector or list of years to select.}
}
\value{
This function returns a list of month and years for each row of the
FARS dataset.
}
\description{
This function will return a list of month and years for all rows that are
present in a FARS data set. The \code{years} argument can be a vector or list
of year in integer format. An error will be thrown if a year and corresponding
file does not exist.
}
\examples{
\dontrun{fars_read_years(2015)}

}
