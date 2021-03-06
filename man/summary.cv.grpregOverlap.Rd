\name{summary.cv.grpregOverlap}
\alias{summary.cv.grpregOverlap}
\alias{print.summary.cv.grpregOverlap}

\title{
Summarizing inferences based on cross-validation
}

\description{
Summary method for \code{cv.grpregOverlap} objects
}

\usage{
\method{summary}{cv.grpregOverlap}(object, ...)

\method{print}{summary.cv.grpregOverlap}(x, digits, ...)
}

\arguments{
  \item{object}{A \code{"cv.grpregOverlap"} object for \code{summary} function.
  }
  \item{x}{
    A \code{"summary.cv.grpregOverlap"} object for \code{print} function.
}
  \item{digits}{Number of digits past the decimal point to print out. Can be a vector specifying different display digits for each of the five non-integer printed values.}
  \item{\dots}{Further arguments passed to or from other methods.}
}

\value{
\code{summary.cv.grpregOverlap} produces an object with S3 class \code{"summary.cv.grpregOverlap"} which inherits class \code{"summary.cv.grpreg"}. The object contains the following list elements:
  \item{penalty}{The penalty used by \code{grpregOverlap}.}
  \item{model}{Either \code{"linear"} or \code{"logistic"}, depending on
    the \code{family} option in \code{grpregOverlap}.}
  \item{n}{Number of observations}
  \item{p}{Number of regression coefficients (not including the intercept).}
  \item{p.latent}{Number of latent coefficients (not including the intercept).}
  \item{min}{The index of \code{lambda} with the smallest cross-validation error.}
  \item{lambda}{The sequence of \code{lambda} values used by \code{cv.grpreg}.}
  \item{cve}{Cross-validation error (deviance).}
  \item{r.squared}{Proportion of variance explained by the model, as estimated 
  by cross-validation.}
  \item{snr}{Signal to noise ratio, as estimated by cross-validation.}
  \item{sigma}{For linear regression models, the scale parameter estimate.}
  \item{pe}{For logistic regression models, the prediction error (misclassification error).}
}

\references{
  \itemize{
  \item Breheny P (2014). R package 'grpreg'. \url{https://CRAN.R-project.org/package=grpreg/grpreg.pdf}
  }
}

\author{
  Yaohui Zeng and Patrick Breheny
  
  Maintainer: Yaohui Zeng <yaohui-zeng@uiowa.edu>
}

\seealso{
\code{\link{grpregOverlap}}, \code{\link{cv.grpregOverlap}}
}
\examples{
## See examples in "grpregOverlap" and "cv.grpregOverlap".
}
