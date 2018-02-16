\name{plotgradient} \alias{plotgradient}

\title{ Plot Gradient Curve }

\description{ Plots the gradient curve that corresponds to a log-concave
  dnesity and a data set.  }

\usage{
plotgradient(lcd, x, w = NULL, col="blue", knotcol=col, pch=1,
             lwd=1, lty=1, ...)
}

\arguments{

  \item{lcd}{ an object of class \code{lcd}. }

  \item{x}{ a vector storing the observations.  }

  \item{w}{ a vector of frequencies (weights) of values stored in
    \code{x}. If \code{w=NULL}, \code{w = 1} is used for each value in
    \code{x}. }

  \item{col}{ color of lines.  }
 
  \item{knotcol}{ color of knots.  }
 
  \item{pch}{ point type for knots.  }
 
  \item{lwd}{ width for the gradient curve.  }
 
  \item{lty}{ line type for the gradient curve.  }
 
  \item{...}{further arguments passed to or from other methods.  }

}

\seealso{ \code{\link{cnmlcd}}, \code{\link{lcd}},
  \code{\link{new.lcd}}, \code{\link{x.weight}}. }

\examples{
data(logreturn)
r = cnmlcd(logreturn)
plot(r$lcd, logreturn)            # Density
plotgradient(r$lcd, logreturn)    # Gradient
}
