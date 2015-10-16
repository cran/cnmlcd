\name{create.lcd}
\alias{create.lcd}
\title{
Create an Object of Class "lcd"
}
\description{
Creates a new object of class "lcd".
}
\usage{
create.lcd(alpha, theta = NULL, p = NULL, L, U)
}
\arguments{
  \item{alpha}{
    the slope of the log-density before the first interior knot.
  }
  \item{theta}{
    vector of interior knots.
  }
  \item{p}{
    vector of changes of slope.
  }
  \item{L}{
    lower-boundary knot. This should be the smallest observed value.
  }
  \item{U}{
    upper-boundary knot. This should be the largest observed value.
  }
}

\value{
  An object of class \code{lcd}.
}
\references{
  Liu, Y. and Wang, Y. (2015). A Fast Algorithm for Log-concave Density
    Estimaiton. In preparation.
  }

\seealso{ \code{\link{lcd}}, \code{\link{cnmlcd}}. }

\examples{
## Create an object of a class "lcd"
create.lcd(alpha = 1, theta = c(2,3), p = c(1,2), L = 0, U = 4)
}
