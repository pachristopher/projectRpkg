% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/m_i.R
\name{m_i}
\alias{m_i}
\title{A helper function to calculate a vector of mortality rates from a gompertz model}
\usage{
m_i(rho, m0, beta, age_vec)
}
\arguments{
\item{rho}{matrix of population proportions. Dimension of matrix: 0-upper age limit of population x number of sub-populations.}

\item{m0}{vector of initial mortality rates.}

\item{beta}{vector of ageing rates.}

\item{age_vec}{vector of ages from birth to upper age limit of population $\omega$}
}
\description{
This helper function produces a vector of mortality rates for a sub-population. It is used in the main gompertz() function.
}
\examples{
m_i(rho, mo, beta, age_vec)
}
\keyword{mortality}
\keyword{population}
\keyword{rates}
