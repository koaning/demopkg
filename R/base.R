#' Calculate monthly spend
#'
#' A more extensive description
#'
#' @param transactions `data.frame` A data set with transactions indexed by customer and month
#'
#' @return `data.frame` A data set with aggregated monthly spend per customer
#'
#' @import dplyr
#'
#' @export
calc_monthly_spend <- function(transactions) {
  transactions %>%
    dplyr::group_by(customer_id, month) %>%
    dplyr::summarise(monthly_spend = sum(amount))
}
