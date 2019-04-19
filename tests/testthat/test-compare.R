test_that("tcrossprod and standard matrix multiplication give the same results!", {
    NR <- 50
    NP <- 20
    NC <- 10

    comp <- matrix(rnorm(NC*NP), ncol=NP)
    rot <- matrix(rnorm(NR*NP), ncol=NP)
    expect_true(tcpCompare(comp, rot))

    comp <- matrix(rnorm(NC*NP), ncol=NP)
    rot <- Matrix::rsparsematrix(NR, NP, 0.1)
    expect_true(tcpCompare(comp, rot))

    comp <- Matrix::rsparsematrix(NC, NP, 0.1)
    rot <- matrix(rnorm(NR*NP), ncol=NP)
    expect_true(tcpCompare(comp, rot))

    comp <- Matrix::rsparsematrix(NC, NP, 0.1)
    rot <- Matrix::rsparsematrix(NR, NP, 0.1)
    expect_true(tcpCompare(comp, rot))
})
