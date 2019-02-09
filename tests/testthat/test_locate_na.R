context("Locate NA function")
library(CleanR)
library(tibble)


toy_data_tbl <- tribble(
  ~x, ~y,  ~z,
  NA, 2,  3.6,
  "b", NA, 8.5,
  "c", NA, NA
)
toy_data_df <- as.data.frame(toy_data_tbl)
toy_all_na <- tibble(x = c(NA,NA,NA), y = c(NA,NA,NA), z = c(NA, NA, NA))
toy_no_na <- tibble(x = c(1,2,3,4), y = c(5,6,7,8))

test_that("Test that input data is a tbl or data.frame", {
  expect_error(locate_na("Input Data"), "Input is not a tibble or data.frame")
  expect_error(locate_na(c(1:10)), "Input is not a tibble or data.frame")
  expect_error(locate_na(list(1:3)), "Input is not a tibble or data.frame")
  expect_error(locate_na(TRUE), "Input is not a tibble or data.frame")
})

test_that("Test valid output format", {
  expect_is(locate_na(toy_tbl), "list")
  expect_is(locate_na(toy_data_df), "list")
})

test_that("Test for correct functionality of the function", {
  toy_result <- list(x=c(1), y=c(2,3), z=c(3))
  all_na_result <- list(x=c(1,2,3), y=c(1,2,3), z=c(1,2,3))
  no_na_result <- list(x=c(0), y=c(0))

  expect_equal(locate_na(toy_data_tbl), toy_result)
  expect_warning(locate_na(toy_all_na), "All values are missing.")
  expect_warning(locate_na(toy_no_na), "No NAs are in the input data.")
})
