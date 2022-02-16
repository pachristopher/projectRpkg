#' A helper function to calculate a vector of mortality rates from a gompertz model
#'
#' This helper function produces a vector of mortality rates for a sub-population. It is used in the main gompertz() function.
#' @param rho matrix of population proportions. Dimension of matrix: 0-upper age limit of population x number of sub-populations.
#' @param m0 vector of initial mortality rates.
#' @param beta vector of ageing rates.
#' @param age_vec vector of ages from birth to upper age limit of population $\omega$ 
#' @keywords population mortality rates
#' @export
#' @examples
#' m_i(rho, mo, beta, age_vec)

m_i <- function(rho, m0, beta, age_vec){
  #check that length of parameter vectors match
  stopifnot("length of parameter vectors representing sub-populations need to be equal"= length(rho[1,])==length(m0))
  m <- matrix(nrow = length(age_vec), ncol = length(rho0))
  for(i in 1:length(rho0)){
    m[,i] <- cbind((rho[,i]*m0[i]*exp(beta[i]*age_vec))/(1+0.5*m0[i]*exp(beta[i]*age_vec)))
  }
  numerator <- rowSums(cbind(m))
  return(numerator/(1-0.5*numerator))
}