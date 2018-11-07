context("Detect a factor or a character")

# test case to check if a factor is a true factor
test_that("True factor", {
  f <- factor(c("s", "t", "a", "t"))

  expect_true(fdetect(f))
})

# test case to check if a factor is a character
test_that("Character factor", {
  f <- factor(c("s", "t", "a"))

  expect_false(fdetect(f))
})

# test case to report an error (not a factor)
test_that("Not a data frame", {
  df <- data.frame(
    x = 1,
    y = 1:10,
    fac = sample(LETTERS[1:3], 10, replace = TRUE)
  )

  expect_error(fdetect(df))
})
