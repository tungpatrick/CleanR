# CleanR
This package cleans a dataset and returns summary statistics as well as number, proportion and location of NA values for string and number column inputs. Data cleaning made easy!

### Collaborators
Heather Van Tassel, Phuntsok Tseten, Patrick Tung

## Overview
There is a dire need for a good data cleaning package, and we are trying to develop our version of a good data cleaning package that will help users clean their data in a meaningful way. Data cleaning is usually the first step in any data science problem, and if you don’t clean your data well, it might be really difficult to proceed further. So our motivation for coming up with this idea was to address this very issue of messy data.

CleanR is especially developed to create a streamlined process to give you an easy to read summary statistics table about your data. CleanR is able to easily locate all the missing data for you and allow you to locate where exactly it occurs. Not only are you able to locate missing data, you can also define how you would like to deal with your missing data. 

## Functions
**Function 1)**


**Function 2)** `locate_na`: Returns a dataframe of the count and indices of NA values.  This function takes in a dataframe and finds NA values and returns the location of these values along the count of total NAs.

```
#' Locate NAs
#'
#’ @description
#’ Locate and return the indices to all missing values within an inputted dataframe.
#’
#' @param input_df dataframe, dataframe that the function will use to locate NAs
#'
#' @return a list of tuples containing indices of missing values
#' @export

locate_na <- function(input_df) {

}
```

**Function 3)**


## CleanR and R's Ecosystem

## Installation
*Will be developed next milestone*

You can install the released version of CleanR from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("CleanR")
```

## R Dependencies

## Example

This is a basic example which shows you how to solve a common problem:

``` r
## basic example code
```

