\name{lcd.object}
\alias{lcd}
\alias{lcd.object}

\title{Class \code{lcd}}

\description{Class \code{lcd} is used to store a log-concave density
  function, where the log-density is given by a piecewise linear function.
}
\value{
  A list consisting of:
  \item{alpha}{
    the slope of the log-density before the first interior knot.
  }
  \item{C}{
    the normalizing constant.
  }
  \item{theta}{
    vector of interior knots.
  }
  \item{p}{
    vector of changes of slope at the interior knots.
  }
  \item{L}{
    lower-boundary knot. This should be the smallest observed value.
  }
  \item{U}{
    upper-boundary knot. This should be the largest observed value.
  }
}
\details{
  Given an \code{lcd} object, the density function is defined by \deqn{f(x; \alpha, \boldsymbol{\theta}, \boldsymbol{p}, L, U) = \frac{1}{C} e^{\alpha x-\sum_{j=1}^m p_j(x-\theta_j)_+},\ \ \ \mathrm{for\ } x \in [L, U],}{f(x; alpha, theta, p, L, U) = 
  
   C^(-1) exp{alpha x - sum_{j=1}^m p_j (x-theta_j)_+},

                                          for x in [L, U],} where \eqn{C}{C} is the normalizing constant given by \deqn{C = \int_L^U e^{\alpha x - \sum_{j=1}^m p_j (x-\theta_j)_+}\;dx}{  C = Integral_L^U e^{alpha x - sum_{j=1}^m p_j (x-theta_j)_+} dx.}
}
\seealso{ \code{\link{cnmlcd}}, \code{\link{plcd}}, \code{\link{dlcd}}, \code{\link{create.lcd}}. }

