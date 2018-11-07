context("Check if an input is data frame")

# test case to check if we manually create a data frame
test_that("Manually create a data frame", {
  df <- data.frame(
    x = 1,
    y = 1:10,
    fac = sample(LETTERS[1:3], 10, replace = TRUE)
  )

  expect_silent(dfcheck(df))
})

# test case to check if we provide a library data frame
test_that("Library data frame", {
  expect_silent(dfcheck(gapminder::gapminder))
})

# test case to report an error
test_that("Not a data frame", {
  f <- factor(c("s", "t", "a"))

  expect_error(dfcheck(f))
})
