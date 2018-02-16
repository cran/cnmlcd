\name{lcd.object}
\alias{lcd}
\alias{lcd.object}

\title{Class \code{lcd}}

\description{Class \code{lcd} is used to store a log-concave density
  function (f), where the log-density is given by a piecewise linear function.
}
\value{
  A list consisting of:
  \item{alpha}{
    the slope of the log-density before the first interior knot.
  }
  
  \item{C}{the normalizing constant.}
  
  \item{theta}{vector of interior knots.}
  
  \item{pi}{ vector of changes of slope at the interior knots.  }
  
  \item{lower}{lower-boundary knot (L). This should be the smallest
    observed value.}
  
  \item{upper}{upper-boundary knot (U). This should be the largest
    observed value.}
  
  \item{coef}{a numeric matrix with two rows, with rows 1 and 2 storing,
  respectively, the intercepts and slopes of the log-density between
  knots.}

  \item{fk}{density values at the lower boundary (\code{lower}) and the
    interior knots (\code{theta}). }

  \item{dpk}{integral of x^o f(x) over each interval between knots for o
    = 0, 1, 2.}
  
  \item{cpk}{integral of x^o f(x) over each interval between the lower
    boundary and each knot. }
  
}
\details{
  Given an \code{lcd} object, the density function is defined by \deqn{f(x; \alpha, \boldsymbol{\theta}, \boldsymbol{p}, L, U) = \frac{1}{C} e^{\alpha (x-L) - \sum_{j=1}^m p_j(x-\theta_j)_+},\ \ \ \mathrm{for\ } x \in [L, U],}{f(x; alpha, theta, p, L, U) = 
  
   C^(-1) exp{alpha (x - L) - sum_{j=1}^m p_j (x-theta_j)_+},

                                          for x in [L, U],} where \eqn{C}{C} is the normalizing constant given by \deqn{C = \int_L^U e^{\alpha (x - L) - \sum_{j=1}^m p_j (x-\theta_j)_+}\;dx}{  C = Integral_L^U e^{alpha (x - L) - sum_{j=1}^m p_j (x-theta_j)_+} dx.}

   \code{coef}, \code{fk}, \code{dpk} and \code{cpk} can all worked out
   from the given parameters. They are computed when a new \code{lcd}
   object is created by function \code{new.lcd()} to facilitate 
   computation when the object is used later. 
				      }
\seealso{ \code{\link{cnmlcd}}, \code{\link{plcd}}, \code{\link{dlcd}}, \code{\link{new.lcd}}. }

