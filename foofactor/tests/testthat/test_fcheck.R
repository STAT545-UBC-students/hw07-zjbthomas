context("Check if an input is a factor")

# test case to check if we manually create a factor
test_that("Manually create a data frame", {
  f <- factor(c("s", "t", "a"))

  expect_silent(fcheck(f))
})

# test case to check if we provide a library factor
test_that("Library factor", {
  expect_silent(fcheck(gapminder::gapminder$country))
})

# test case to report an error
test_that("Not a data frame", {
  df <- data.frame(
    x = 1,
    y = 1:10,
    fac = sample(LETTERS[1:3], 10, replace = TRUE)
  )

  expect_error(fcheck(df))
})
