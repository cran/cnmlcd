\name{new.lcd}
\alias{new.lcd}
\title{
Create an Object of Class "lcd"
}
\description{
Creates a new object of class "lcd".
}
\usage{
new.lcd(alpha, theta = NULL, pi = NULL, lower, upper)
}
\arguments{
  \item{alpha}{
    the slope of the log-density before the first interior knot.
  }
  \item{theta}{
    vector of interior knots.
  }
  \item{pi}{
    vector of changes of slope.
  }
  \item{lower}{
    lower-boundary knot (L). This should be the smallest observed value.
  }
  \item{upper}{
    upper-boundary knot (U). This should be the largest observed value.
  }
}

\value{
  An object of class \code{lcd}.
}

\references{
  
  Liu, Y. and Wang, Y. (2018). A Fast Algorithm for Univariate
  Log-concave Density Estimation. \emph{Australia & New Zealand Journal
  of Statistics} (To appear).
  
}

\seealso{ \code{\link{lcd}}, \code{\link{cnmlcd}}. }

\examples{
## Create an object of a class "lcd"
new.lcd(alpha = 1, theta = c(2,3), pi = c(1,2), lower = 0, upper = 4)
}
