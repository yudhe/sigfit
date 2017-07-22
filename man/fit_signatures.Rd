% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sigfit.R
\name{fit_signatures}
\alias{fit_signatures}
\title{Runs the MCMC sampling chain to estimate exposures}
\usage{
fit_signatures(counts, signatures, prior = NULL, hierarchical = FALSE,
  multi = FALSE, ...)
}
\arguments{
\item{counts}{Vector of mutation counts}

\item{signatures}{Matrix of mutational signatures}

\item{prior}{Vector of the same length as signatures, to be used as the Dirichlet prior in the sampling chain. Default is all ones, i.e. uninformative}

\item{...}{Arguments to pass to rstan::sampling}
}
\description{
Runs the MCMC sampling chain to estimate exposures
}
\examples{
 # Custom prior favours signature 1 over 2, 3 and 4
samples <- sigfit::fit_signatures(mycounts, mysignatures, prior = c(5, 1, 1, 1))

# Run a single chain for quite a long time
samples <- sigfit::fit_signatures(mycounts, mysignatures, chains = 1, niter = 13000, warmup = 3000)
}