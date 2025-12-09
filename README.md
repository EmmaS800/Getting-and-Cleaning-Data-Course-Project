# Getting-and-Cleaning-Data-Course-Project
Course Assignment - Module 3 - Getting and Cleaning Data

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.
This repo explains how all of the scripts work and how they are connected

Here is the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# How the R script "run_analysis.R" should be applied to tidy the dataset:
```
## Load the following packages:

>library(dplyr)
>library(data.table)

## Download the dataset:
## NB: The code should have a file run_analysis.R in the main directory that can be run
## as long as the Samsung data is in your working directory.

> fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
> filename <- "getdata_projectfiles_UCI HAR Dataset.zip"
> download.file(fileURL, filename)
> unzip(filename)

## Applying the function to the dataset:

> source("run_analysis.R")
> run_analysis()

```

# Assignment Requirements 
>i.e. 5 outcomes of the "run_analysis.R" script
Creating one R script called "run_analysis.R" that does the following:

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Overall, I was required to submit: 
1) A tidy data set as described above
2) A link to a Github repository with your script for performing the analysis
3) A code book that describes the variables, the data, and any transformations or work that I performed to clean up the data called CodeBook.md.
4) This README.md with my scripts.
