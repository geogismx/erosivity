% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hyet_missing.R
\name{hyet_missing}
\alias{hyet_missing}
\title{Compute missing values ratio per month}
\usage{
hyet_missing(hyet)
}
\arguments{
\item{hyet}{a hyetograph from \code{hyet_create} function}
}
\value{
a tibble with missing values ratios per month and year
}
\description{
\code{hyet_missing} computes missing values ratio using an
hyetograph from the \code{hyet_create} function.
}
\note{
\code{hyet} must not contain missing dates. Please use the
\code{hyet_fill} function before \code{hyet_missing}. Moreover, \code{hyet}
must start at the first day of a month.
}
\examples{

# load data
data(prec5min)

# compute missing values ratio per month and year
prec5min \%>\%
hyet_fill(time_step = 10) \%>\%
hyet_missing()

}
