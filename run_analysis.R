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

      library(dplyr)
      library(data.table)

## Reading & formatting the data and metadata:

       feature_names <- read.table("UCI HAR Dataset/features.txt")
       activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
       subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
       feature_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
       activity_train <- read.table("UCI HAR Dataset/train/Y_train.txt", header = FALSE)
       subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
       feature_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
       activity_test <- read.table("UCI HAR Dataset/test/Y_test.txt", header = FALSE)

## Outcome 1: Merging the data into a singular dataset.######################################################################################
## Three pairs of data (shared in the "train" and test datasets) were merged using 
## the "rbind" function to create the, "subject", "activity"(y) and "feature"(x) datasets.

       subject <- rbind(subject_train, subject_test)
       activity <- rbind(activity_train, activity_test)
       feature <- rbind(feature_train, feature_test)

## Column names for each of these datasets are prescribed before finalling using 
## the "cbind" command to create a singular dataset ("full_data").

       colnames(subject) <- "Subject"
       colnames(activity) <- "Activity"
       colnames(feature) <- t(feature_names[2])
       full_data <- cbind(feature,activity,subject)

## Outcome 2: Extracting the mean and standard deviation results for each measurement.#######################################################
## The "grep" function is used to isolate the results of the mean() & std() from the "full_data" dataset.
  
       Mean_Std <- grep(".*Mean.*|.*Std.*", names(full_data), ignore.case=TRUE)
  
## The dimensions of the "full_data" dataset is then used with the results of the "grep" function to create the "isolated_columns" variable.

       isolated_columns <- c(Mean_Std, 562, 563)
       dim(full_data)
  
## The dimensions of the "isolated_columns" variable are then applied to the "full_data" dataset to produce the "isolated_data" dataset.

       isolated_data <- full_data[,isolated_columns]
       dim(isolated_data)

  
## Outcome 3: Naming the activities in the dataset.##########################################################################################
## The "Activity" variable is first transformed to character data instead of numeric data.

       isolated_data$Activity <- as.character(isolated_data$Activity)
  
## The "activity_labels" data can then be applied to the "isolated_data" dataset to provide a descriptive 
## name of the activities in the dataset.

       for (i in 1:6){
                        isolated_data$Activity[isolated_data$Activity == i] <- as.character(activity_labels[i,2])
                     }

  
## Outcome 4: Labelling the dataset with descriptive variable names.#########################################################################
## The "gsub" function is applied to the "isolated_data" dataset to expand all abbreviations and shortened words.

       names(isolated_data)<-gsub("^t", "Time", names(isolated_data))
       names(isolated_data)<-gsub("^f", "Frequency", names(isolated_data))
       names(isolated_data)<-gsub("-mean()", "Mean", names(isolated_data), ignore.case = TRUE)
       names(isolated_data)<-gsub("-std()", "STD", names(isolated_data), ignore.case = TRUE)
       names(isolated_data)<-gsub("-freq()", "Frequency", names(isolated_data), ignore.case = TRUE)
       names(isolated_data)<-gsub("angle", "Angle", names(isolated_data))
       names(isolated_data)<-gsub("gravity", "Gravity", names(isolated_data))
       names(isolated_data)<-gsub("Acc", "Accelerometer", names(isolated_data))
       names(isolated_data)<-gsub("Gyro", "Gyroscope", names(isolated_data))
       names(isolated_data)<-gsub("Mag", "Magnitude", names(isolated_data))
       names(isolated_data)<-gsub("tBody", "TimeBody", names(isolated_data))
  
## Outcome 5: From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.#####################################################################
## To ensure the correct function of the "dplyr" package, the "isolated_data" dataset will be set as "data.table"

       isolated_data <- data.table(isolated_data)
  
## The "isolated_data" dataset will then be renamed as "TidyData", the "subject" and "activity" columns will be grouped to allow the "mean" function to be applied to them.
## Lastly, the "TidyData.txt" file will be created.

       TidyData <- isolated_data %>%
          group_by(Subject, Activity) %>%
          summarise_all(funs(mean))
       write.table(TidyData, "TidyData.txt", row.name=FALSE)

}
  
