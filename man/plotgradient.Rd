\name{plotgradient}
\alias{plotgradient}

\title{
  Plot Gradient Curve
}
\description{
  Plots the gradient curve that corresponds to a log-concave dnesity and
  a data set.
}
\usage{
plotgradient(lcd, x, w = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lcd}{
    an object of class "lcd"
  }
  \item{x}{
    a vector storing the observations.
  }
  \item{w}{
    a vector of frequencies (weights) of values stored in \code{x}. If
    \code{w=NULL}, weights will be found inside the function.
  }
}

\seealso{ \code{\link{cnmlcd}}, \code{\link{lcd}},
  \code{\link{create.lcd}}, \code{\link{x.weight}}. }

\examples{
data(logreturn)
r = cnmlcd(logreturn$value)
plot(r$lcd, logreturn$value)          # Density
plotgradient(r$lcd, logreturn$value)  # Gradient
}
