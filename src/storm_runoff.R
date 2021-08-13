

#' Calculate the volume of stormwater expected for a watershed
#'
#' This function calculates the volume of stormwater expected for a watershed given the runoff coefficient (Rv) and the fraction of the watershed that is considered "impervious" (Ia). This function returns the value of the volume (in cubic feet). The design storm rainfall depth in inches (Rd) is set to 1.0.
#'
#' @param Ia the fraction of the watershed that is considered "impervious" (unitless).
#' @param A the watershed area in acres.
#'
#' @return
#' @export
#'
#' @examples
predict_runoff <- function(Ia, A) {
  Rd <- 1.0
  Rv <- 0.05 + 0.9*Ia
  V <- 3630 * Rd * Rv * A
  return(V)
}

