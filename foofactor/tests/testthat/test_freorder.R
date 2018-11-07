context("Reorder factor")

# test case to check if the factor has duplicated elements
test_that("Factor with duplicated elements", {
  f <- factor(c("s", "t", "a", "t"))

  expect_equal(
    levels(freorder(f)),
    c("t", "s", "a")
  )
})

# test case to check if all elements are unique in factor
test_that("Factor with unique elements", {
  f <- factor(c("s", "t", "a"))

  expect_equal(
    levels(freorder(f)),
    c("t", "s", "a")
  )
})

# test case to report an error (not a factor)
test_that("Not a data frame", {
  df <- data.frame(
    x = 1,
    y = 1:10,
    fac = sample(LETTERS[1:3], 10, replace = TRUE)
  )

  expect_error(freorder(df))
})
