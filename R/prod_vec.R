#' A function to produce a vector of products
#'
#' This function is a helper function which calculates the product to be used in the rho (pop proportion) function.
#' @param m0 vector of initial mortality rates.
#' @param beta vector of ageing rates.
#' @param age_vec vector of ages from birth to upper age limit of population $\omega$. 
#' @keywords helper function
#' @export
#' @examples
#' prod_vec(m0, beta, age_vec)

prod_vec <- function(m0, beta, age_vec) {
  return((1-0.5*m0*exp(beta*age_vec))/(1+0.5*m0*exp(beta*age_vec)))
}