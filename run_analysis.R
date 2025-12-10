## run_analysis.R

## How to download the dataset:
## NB: The code should have a file run_analysis.R in the main directory that can be run
## as long as the Samsung data is in your working directory.

## > fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## > filename <- "getdata_projectfiles_UCI HAR Dataset.zip"
## > download.file(fileURL, filename)
## > unzip(filename)

run_analysis <- function() {

## Load the following packages

>library(dplyr)
>library(data.table)

## Reading & formatting the data and metadata:

> feature_names <- read.table("UCI HAR Dataset/features.txt")
> activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
> subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
> feature_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
> activity_train <- read.table("UCI HAR Dataset/train/Y_train.txt", header = FALSE)
> subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
> feature_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
> activity_test <- read.table("UCI HAR Dataset/test/Y_test.txt", header = FALSE)

## rf
