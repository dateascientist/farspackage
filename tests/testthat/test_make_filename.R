context("Making Filename")

test_that("make_filename creates a filename string", {
  file <- "accident_2013.csv.bz2"
  expect_identical(make_filename(2013), file)
})
