\name{cnmlcd}
\alias{cnmlcd}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
Maximum Likelihood Estimation of a Log-concave Density Function
}

\description{
The function computes the nonparametric maximum likelihood estimate
(NPMLE) of a log-concave density from univariate observations.
}

\usage{
cnmlcd(x, lcd, maxit = 100, tol = 1e-07, quiet = TRUE)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{x}{
    a vector storing univariate observations.
  }
  \item{lcd}{
    an initial log-concave density function, which is an object of class
    "lcd".
  }
  \item{maxit}{
    maximum number of iterations.
  }
  \item{tol}{
    tolerance level for stopping the algorithm. Internally, it is used
    as the threshold on the increase of the log-likelihood after each
    iteration.
  }
  \item{quiet}{
    logical. If it is \code{FALSE}, the log-likelihood value is printed
    and the graident curve plotted in each iteration. This is mainly
    needed for monitoring and debugging purposes.
  }
}

\details{ The algorithm used to compute the NPMLE is an extension of the
  constrained Newton method of Wang (2007) for nonparametric mixture
  estimation. It guarantees to find the unique NPMLE.

  The algorithm is described in Liu and Wang (2015).
}

\value{
 \item{lcd}{the NPMLE when the algorithm successfully converges, stored
   as an object of class "lcd".}
 \item{ll}{the log-likelihood value, evaluated at the NPMLE.}
 \item{num.iterations}{number of iterations used.}
 \item{max.gradient}{maximum gradient value at convergence.}
 \item{convergence}{= 0, a successful convergence;

   = 1, failure of convergence, likely because the number of iterations
   is reached.}
}

\references{ Wang, Y. (2007). On the fast computation of the
  nonparametric maximum likelihood estimate of a mixing
  distribution. Journal of the Royal Statistical Society, Series B, 69,
  185-198.

  Liu, Y. and Wang, Y. (2015). A Fast Algorithm for Log-concave Density
  Estimation. In preparation.
}

\author{
  Yu Liu <liu.yu@auckland.ac.nz>, Yong Wang <yongwang@auckland.ac.nz>
}

%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{
## Normal density
x = rnorm(1000)
cnmlcd(x, quiet = FALSE) # also show intermediate results
r = cnmlcd(x)

## Log-likelihood values at the NPMLE
r$ll
logLik(r$lcd, x)

## Density or log density plot
plot(r$lcd)
plot(r$lcd, x)
plot(r$lcd, x, log = TRUE)

## Density function of the Log-concave distribution
dlcd(-4:4, r$lcd)

## Estimation from log-return data
data(logreturn)
r = cnmlcd(logreturn$value)
plot(r$lcd, logreturn$value)
plot(r$lcd, logreturn$value, log = TRUE)

## Estimation for log-volatility data
data(logvolatility)
r = cnmlcd(logvolatility$value)
plot(r$lcd, logvolatility$value)
}
