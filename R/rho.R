#' A function to calculate a matrix of population proportions
#'
#' This function produces a matrix of population proportions to be used in calculating a vector of mortality rates.
#' @param rho0 vector of initial population proportions. Length of vector equals number of sub-populations.
#' @param m0 vector of initial mortality rates.
#' @param beta vector of ageing rates.
#' @param age_vec vector of ages from birth to upper age limit of population $\omega$ 
#' @keywords population proportions
#' @export
#' @examples
#' rho()

rho <- function(rho0, m0, beta, age_vec){
  #check that length of parameter vectors match
  stopifnot("lenght of parameter vectors representing sub-populations need to be equal"= length(m0)==length(beta))
  #create matrix of numerators of dim(i x j)
  numerators <- matrix(nrow=length(age_vec), ncol = length(rho0))
  numerators[1,] <- rho0
  for(i in 1:length(rho0)){
    numerators[2:length(age_vec),i] <- cbind(rho0[i]*cumprod(prod_vec(m0[i], beta[i], age_vec[1:(length(age_vec)-1)])))
  }
  denominator <- rowSums(numerators[,1:length(rho0)])
  rho <- matrix(nrow = length(age_vec), ncol = length(rho0))
  for( i in 1:length(rho0)){
    rho[,i] <- cbind(numerators[,i] / denominator)
  }
  return(rho) # length(i x n) matrix of population proportions for the n sub-populations
}
