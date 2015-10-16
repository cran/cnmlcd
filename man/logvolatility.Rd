\name{logvolatility}
\alias{logvolatility}
\docType{data}
\title{
  Daily Log-volatilities of S&P 500.
}
\description{
  4783 daily log-volatilities of S&P 500 from 03/01/1995 to 03/01/2014.
}

\usage{logvolatility}
\format{
  A data frame with 4786 observations and a single variable \code{value}.
}

\source{
  Data retrieved from Yahoo Finance https://finance.yahoo.com.
}
\references{
  Liu, Y. and Wang, Y. (2015). A Fast Algorithm for Log-concave Density
  Estimaiton. In preparation.
}

\seealso{ \code{\link{cnmlcd}}, \code{\link{lcd}}. }

\examples{
data(logvolatility)
## Computes and plots the log-concave density estimate
(r = cnmlcd(logvolatility$value))
plot(r$lcd, logvolatility$value)                 # Density
plot(r$lcd, logvolatility$value, log=TRUE)       # Log-density
}

\keyword{datasets}
