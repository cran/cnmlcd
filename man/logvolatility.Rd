\name{logvolatility}
\alias{logvolatility}
\docType{data}
\title{
  Daily Log-volatilities of S&P 500.
}
\description{
  4783 daily log-volatilities of S&P 500 from 03/01/1995 to 03/01/2014.
}

\usage{logvolatilities}
\format{
  A vector of 4786 values.
}

\source{
  Data retrieved from Yahoo Finance.
}

\seealso{ \code{\link{cnmlcd}}, \code{\link{lcd}}. }

\examples{
data(logvolatility)
## Computes and plots the log-concave density estimate
(r = cnmlcd(logvolatility))
plot(r$lcd, logvolatility)               # Density
plot(r$lcd, logvolatility, log=TRUE)     # Log-density
plotgradient(r$lcd, logvolatility)       # Gradient
}

\keyword{datasets}
