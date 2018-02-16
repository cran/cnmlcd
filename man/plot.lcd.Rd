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
\method{plot}{lcd}(x, data, w=NULL, log=FALSE, col="blue", knotcol=col, 
   border="grey", lwd=1, pch=1, main, breaks=50, ...)
}

\arguments{
  \item{x}{
    an object of class "lcd".
  }
  
  \item{data}{
    a numeric vector storing the observations.
  }
  
  \item{w}{
    frequencies or weights for the values in \code{x}. If NULL, \code{w
    = 1} is used for each value in \code{x}. 
  }
  
  \item{log}{logical, indicating if the log density plot is to be
    plotted instead.  }
  
  \item{col}{ color of lines.  }
  
  \item{knotcol}{ color of knots.  }
  
  \item{border}{ color for the border of histogram or log histogram.  }
  
  \item{lwd}{ line width.  }
  
  \item{pch}{ point type used for knots.  }
  
  \item{main}{ main title.  }
  
  \item{breaks}{ number of break points used for creating histogram or log-histogram.  }
  
  \item{...}{further arguments passed to or from other methods.  }

}

\details{ Either the density or its logarithm is plotted, depending on
  the value of \code{log}. Knots are shown in circles. If \code{data}
  is provided, the plot also includes a histgram or log-histogram for
  \code{data}.}

\references{

  Liu, Y. and Wang, Y. (2018). A Fast Algorithm for Univariate
  Log-concave Density Estimation. \emph{Australia & New Zealand Journal
  of Statistics} (To appear).
  
}

\author{
  Yu Liu <liu.yu@auckland.ac.nz>, Yong Wang <yongwang@auckland.ac.nz>
}

\seealso{ \code{\link{cnmlcd}}, \code{\link{lcd}},
  \code{\link{new.lcd}}, \code{\link{dlcd}}. }
