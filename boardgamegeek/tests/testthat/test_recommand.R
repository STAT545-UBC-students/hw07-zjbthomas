context("Test recommandation functions")

# test recommand by min players
test_that("Recommand by min players", {
  results <- recommand_by_num_of_player(min = 2)
  expect_equal(nrow(results), 4158)
})

# test recommand by max players
test_that("Recommand by max players", {
  results <- recommand_by_num_of_player(max = 3)
  expect_equal(nrow(results), 1098)
})

# test recommand by min and max players
test_that("Recommand by min and max players", {
  results <- recommand_by_num_of_player(min = 2, max = 3)
  expect_equal(nrow(results), 858)
})

# test recommand by min time
test_that("Recommand by min time", {
  results <- recommand_by_time(min = 10)
  expect_equal(nrow(results), 4892)
})

# test recommand by max time
test_that("Recommand by max time", {
  results <- recommand_by_time(max = 80)
  expect_equal(nrow(results), 3183)
})

# test recommand by min and max time
test_that("Recommand by min and max time", {
  results <- recommand_by_time(min = 10, max = 80)
  expect_equal(nrow(results), 3113)
})

# test recommand by min age
test_that("Recommand by min age", {
  results <- recommand_by_age(14)
  expect_equal(nrow(results), 639)
})
