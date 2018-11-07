context("Test searching functions")

# test search by game ID
test_that("Search by game ID", {
  expect_equal(
    search_by_game_id(102794),
    bgg_db %>%
      dplyr::filter(rank == 15)
  )
})

# test search by name
test_that("Search by name", {
  expect_equal(
    search_by_name("Mansions of Madness: Second Edition"),
    bgg_db %>%
      dplyr::filter(rank == 21)
  )
})

# test search by year
test_that("Search by year", {
  results <- search_by_year(2017)
  expect_equal(nrow(results), 379)
})

# test search by mechanic
test_that("Search by mechanic", {
  results <- search_by_mechanic("Action")
  expect_equal(nrow(results), 826)
})

# test search by category
test_that("Search by category", {
  results <- search_by_category("Dice")
  expect_equal(nrow(results), 352)
})

# test search by designer
test_that("Search by designer", {
  results <- search_by_designer("Manuel Rozoy")
  expect_equal(nrow(results), 1)
})
