\name{plot.lcd}
\alias{plot.lcd}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Plot Log-concave Density
}
\description{
  Plot method for class "lcd".
}

\usage{
\method{plot}{lcd}(x, data, log = FALSE, line.col = "blue", knot.col = "red", ...)
}

\arguments{
  \item{x}{
    an object of class "lcd".
  }
  \item{data}{
    a vector storing the observations.
  }
  \item{log}{logical, indicating if the log density plot is to be
    plotted instead.
  }
  \item{line.col}{
    color of lines.
  }
  \item{knot.col}{
    color of knots.
  }
    \item{...}{further arguments passed to or from other methods.
  }
}

\details{ Either the density or its logarithm is plotted, depending on
  the value of \code{log}. Knots are shown in solid circles. If \code{data}
  is provided, the plot also includes a histgram/log-histogram for
  \code{data}.

  A log-histogram is plotted similarly to the function \code{logHist} in
  the R package \code{DistributionUtils} of Scott (2015).}

\references{
  Scott, D. (2015). R package \code{DistributionUtils}, version 0.5-1.

  Liu, Y. and Wang, Y. (2015). A Fast Algorithm for Log-concave Density
  Estimation. In preparation.
}

\author{
  Yu Liu <liu.yu@auckland.ac.nz>, Yong Wang <yongwang@auckland.ac.nz>
}

\seealso{ \code{\link{cnmlcd}}, \code{\link{lcd}},
  \code{\link{create.lcd}}, \code{\link{dlcd}}. }
