% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pl.R
\name{pl}
\alias{pl}
\title{Plot function}
\usage{
pl(
  x,
  plot.name = "",
  loc = "/Users/csng/work/rplots/",
  w = 5,
  h = 5,
  scaling = 1
)
}
\arguments{
\item{x}{plot object}

\item{plot.name}{what you want to call it}

\item{loc}{output location}

\item{w}{width}

\item{h}{height}

\item{scaling}{scaling factor}
}
\value{
System output pdf
}
\description{
Plot function
}
\examples{
pl(hist(sample(1:50,200,replace=TRUE)))
}
