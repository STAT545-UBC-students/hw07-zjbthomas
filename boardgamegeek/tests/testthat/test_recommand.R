context("Test recommandation functions")

# test recommand by min players
test_that("Recommand by min players", {
  results <- recommand_by_number_of_player(min = 2)
  expect_equal(nrow(results), 4230)
})

# test recommand by max players
test_that("Recommand by max players", {
  results <- recommand_by_number_of_player(max = 3)
  expect_equal(nrow(results), 3965)
})

# test recommand by min and max players
test_that("Recommand by min and max players", {
  results <- recommand_by_number_of_player(min = 2, max = 3)
  expect_equal(nrow(results), 3198)
})

# test recommand by min time
test_that("Recommand by min time", {
  results <- recommand_by_time(min = 10)
  expect_equal(nrow(results), 271)
})

# test recommand by max time
test_that("Recommand by max time", {
  results <- recommand_by_time(max = 80)
  expect_equal(nrow(results), 1828)
})

# test recommand by min and max time
test_that("Recommand by min and max time", {
  results <- recommand_by_time(min = 10, max = 80)
  expect_equal(nrow(results), 39)
})

# test recommand by min age
test_that("Recommand by min age", {
  results <- recommand_by_age(14)
  expect_equal(nrow(results), 4893)
})
