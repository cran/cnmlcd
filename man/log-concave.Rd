\name{log-concave}
\alias{log-concave}
\alias{dlcd}
\alias{plcd}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  The Log-concave Distribution.
}

\description{
  Density and dstribution function for a log-concave distribution.
}
\usage{
dlcd(x, lcd, log = FALSE)
plcd(q, lcd, lower.tail = TRUE, log.p = FALSE)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x, q}{
    vector of quantiles.
  }
  
  \item{lcd}{ an object of class \code{lcd}.  }
  
  \item{log, log.p}{logical. If TRUE, the log density or log
    probability values are to be returned.  }
  
  \item{lower.tail}{logical. If \code{TRUE} (default), probabilities are
    p[X <= q]; if otherwise, p[X > q].}

}

\value{ \code{dlcd} gives the density values, and \code{plcd} gives the
  distribution function values.}

\references{

  Liu, Y. and Wang, Y. (2018). A Fast Algorithm for Univariate
  Log-concave Density Estimation. \emph{Australia & New Zealand Journal
  of Statistics} (To appear).

}

\seealso{ \code{\link{cnmlcd}}, \code{\link{lcd}}. }

\examples{
x = rnorm(1000)
r = cnmlcd(x)
dlcd(-4:4, r$lcd)
dlcd(-4:4, r$lcd, log=TRUE)
plcd(-4:4, r$lcd)
plcd(-4:4, r$lcd, lower.tail = FALSE)
}
