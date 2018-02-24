% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hyet_erosivity.R
\name{hyet_erosivity}
\alias{hyet_erosivity}
\title{Compute raifall erosivity}
\usage{
hyet_erosivity(hyet, time_step)
}
\arguments{
\item{hyet}{a hyetograph from \code{hyet_create} function}

\item{time_step}{hyetograph's time-step, integer
precipitation, boolean}
}
\value{
a tibble with erosive rainstorms values
}
\description{
\code{prec_eros} computes erosivity values using an hyetograph
from the \code{hyet_create} function and its timestep.
}
\examples{

# load data
data(prec5min)

# compute EI
time_step <- 5
ei_values <- prec5min \%>\%
 hyet_fill(time_step) \%>\%
 hyet_erosivity(time_step)

}