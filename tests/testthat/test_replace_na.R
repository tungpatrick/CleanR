# This script tests the replace_na() function
context("Replace NA function")
library(CleanR)

#Input a data frame


data <- data.frame((x = c(NA,NA,NA), y = c(NA,NA,NA), z = c(NA, NA, NA)))

test_that("Test that input is a data frame", {
  expect_error(replace_na("Input Data"), "Input is not a data frame")
})

test_that("Test that input has NA", {
  expect_error(replace_na("Input Data"), "Do not do anything if there are no NA")
})
test_that("Test that if the whole input has NA", {
  expect_error(replace_na("Input Data"), "Throw a warning that the input is not valid")
})


