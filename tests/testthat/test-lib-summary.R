test_that("lib_summmary returns expected results", {

  res <- lib_summary()

  expect_s3_class(res, "data.frame")

  expect_equal(ncol(res), 2)

  expect_equal(names(res), c("Library", "n_packages"))

  expect_type(res$Library, "character")

  expect_type(res$n_packages, "integer")

})

test_that("lib_summary fails accordingly", {
  res <- lib_summary(sizes = TRUE)

  expect_error(lib_summary("foo"), "sizes must be a logical")
  expect_equal(ncol(res), 3)
  expect_equal(names(res), c("Library", "n_packages", "lib_size"))
  expect_type(res$lib_size, "double")

})
