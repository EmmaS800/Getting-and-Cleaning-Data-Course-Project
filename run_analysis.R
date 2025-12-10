## run_analysis.R
## Load the following packages:

## >library(dplyr)
## >library(data.table)

## Download the dataset:
## NB: The code should have a file run_analysis.R in the main directory that can be run
## as long as the Samsung data is in your working directory.

## > fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## > filename <- "getdata_projectfiles_UCI HAR Dataset.zip"
## > download.file(fileURL, filename)
## > unzip(filename)

run_analysis <- function() {
