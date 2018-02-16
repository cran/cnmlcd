\name{logreturn2014}
\alias{logreturn2014}
\docType{data}
\title{
  Daily Log-returns of S&P 500 in 2014.
}
\description{
  252 daily log-returns of S&P 500 from 02/01/2014 to 31/12/2014.
}
\usage{logreturn2014}
\format{
  A vector of 252 values.
}

\source{
  Data retrieved from Yahoo Finance.
}

\seealso{ \code{\link{cnmlcd}}, \code{\link{lcd}}. }

\examples{
data(logreturn2014)
## Computes and plots the log-concave density estimate
(r = cnmlcd(logreturn2014))
plot(r$lcd, logreturn2014)               # Density
plot(r$lcd, logreturn2014, log=TRUE)     # Log-density
plotgradient(r$lcd, logreturn2014)       # Gradient
}
\keyword{datasets}

