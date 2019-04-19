#' Compares cross-products
#'
#' Compare the output of \code{tcrossprod} with standard matrix multiplication.
#' 
#' @param x A matrix-like object.
#' @param y Another matrix-like object.
#'
#' @return A logical scalar indicating whether \code{tcrossprod(x, y)} is identical to \code{x \%*\% t(y)}.
#' 
#' @author Aaron Lun
#' @examples
#' NC <- 10
#' NP <- 20
#' NR <- 50
#'
#' comp <- matrix(rnorm(NC*NP), ncol=NP)
#' rot <- Matrix::rsparsematrix(NR, NP, 0.1)
#'
#' tcpCompare(comp, rot)
#'
#' @export
#' @importFrom Matrix tcrossprod t
tcpCompare <- function(x, y) {
    identical(tcrossprod(x, y), x %*% t(y))
}
