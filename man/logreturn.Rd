\name{logreturn}
\alias{logreturn}
\docType{data}
\title{
  Daily Log-returns of S&P 500.
}
\description{
  252 daily log-returns of S&P 500 from 03/01/2011 to 03/01/2012.
}
\usage{logreturn}
\format{
  A vector of 252 values.
}

\source{
  Data retrieved from Yahoo Finance.
}

\seealso{ \code{\link{cnmlcd}}, \code{\link{lcd}}. }

\examples{
data(logreturn)
## Computes and plots the log-concave density estimate
(r = cnmlcd(logreturn))
plot(r$lcd, logreturn)                 # Density
plot(r$lcd, logreturn, log=TRUE)       # Log-density
plotgradient(r$lcd, logreturn)         # Gradient
}
\keyword{datasets}

\keyword{datasets}

