\name{x.weight}
\alias{x.weight}

\title{
  Compute Weights of Distinct Observed Values
}

\description{
  Finds frequencies of unique observed values.
}

\usage{
x.weight(x)
}

\arguments{
  \item{x}{
    observations for which frequencies (or weights) of unique values are
    to be found.
  }
}

\value{
  \item{x }{vector of distinct and sorted observations.}
  \item{w }{vector of observation weights.}
}

\examples{
x.weight(c(5:1,1,3))
}
