testthat::test_that("calc_monthly_spend works", {
  transactions <- data.frame(
    customer_id = c('A', 'A', 'B', 'B'),
    month = c(202101L, 202101L, 202101L, 202101L),
    amount = c(100.0, 200.0, 10000.0, 100.0)
  )
  desired_result <- data.frame(
    customer_id = c('A', 'B'),
    month = c(202101L, 202101L),
    monthly_spend = c(300.0, 10100.0)
  )
  calculated_result <- as.data.frame(demopkg::calc_monthly_spend(transactions))
  testthat::expect_equal(desired_result, calculated_result)
})
