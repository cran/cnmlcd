\name{logreturn}
\alias{logreturn}
\docType{data}
\title{
  Daily log-returns of S&P 500.
}
\description{
  252 daily log-returns of S&P 500 from 03/01/2011 to 03/01/2012.
}
\usage{logreturn}
\format{
  A data frame with 252 observations and a single variable \code{value}.
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
data(logreturn)
## Computes and plots the log-concave density estimate
(r = cnmlcd(logreturn$value))
plot(r$lcd, logreturn$value)                 # Density
plot(r$lcd, logreturn$value, log=TRUE)       # Log-density
}
\keyword{datasets}

