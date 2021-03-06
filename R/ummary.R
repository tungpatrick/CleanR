#' Summary
#'
#' @description
#' It will determine the main data type of the column by calculated the type
#' of each row entry in the column, and using the most frequent data type as
#' the expected input for that column. It will perform two different summary
#' statistics based on 2 different groups of datatypes of either 1) string or
#' 2) int/float. For number columns it returns a dataframe of columns which
#' contain dataframes of summary statistics including mean value for each column,
#' min, max, count (number of non NA values per column) and count_NA (number of
#' NA values per column). Similarly, for string columns it returns the unique
#' string values and their counts. It will also provide a count of NA values
#' which will include empty strings, and anything other than the correct data
#' type for each column.
#'
#' @param data (tbl_df, df, data.frame) dataframe that the function will use to locate NAs
#'
#' @return a nested dataframe of columns with their summary statistics
#' @export

summary <- function(data, include_zeros=TRUE) {

}
