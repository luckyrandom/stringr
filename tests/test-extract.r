library(testthat)
library_if_available(stringr)

context("Extract patterns")

test_that("single pattern extracted correctly", {
  test <- c("one two three", "a b c")
  
  expect_that(
    str_extract(test, "[a-z]+"),
    equals(list(c("one", "two", "three"), c("a", "b", "c"))))
  
  expect_that(
    str_extract(test, "[a-z]{3,}"),
    equals(list(c("one", "two", "three"), character())))
  
})
