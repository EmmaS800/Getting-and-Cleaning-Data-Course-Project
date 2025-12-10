# Getting-and-Cleaning-Data-Course-Project
Course Assignment - Module 3 - Getting and Cleaning Data

A code book that describes the variables, data, and any transformations or work that I performed to clean up the dataset.
The goal is to prepare tidy data that can be used for later analysis.

> The download and application of the R script "run_analysis.R" is decribed in "README.md"

# VARIABLES & DATA:

> Data summary from "README.txt"

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."

> A list of data from the dataset used in the assignment:

 - README.txt (Contains descriptions of data in the following files)
 - features_info.txt
 - features.txt
 - activity_labels.txt
 - train/subject_train.txt
 - train/X_train.txt
 - train/Y_train.txt
 - test/subject_test.txt
 - test/X_test.txt
 - test/y_test.txt

### A list of the variables created & applied to the data:

>  In the file "features.txt", results of the experiments in the datasets were interpreted with
>  Mean() std() operations (among many others),
>  these variables (88) were extracted in order to tidy the dataset.
>  These variables were then renamed with greater detail to produce the following;

```
##  [1] "TimeBodyAccelerometerMean()-X"                    
##  [2] "TimeBodyAccelerometerMean()-Y"                    
##  [3] "TimeBodyAccelerometerMean()-Z"                    
##  [4] "TimeBodyAccelerometerSTD()-X"                     
##  [5] "TimeBodyAccelerometerSTD()-Y"                     
##  [6] "TimeBodyAccelerometerSTD()-Z"                     
##  [7] "TimeGravityAccelerometerMean()-X"                 
##  [8] "TimeGravityAccelerometerMean()-Y"                 
##  [9] "TimeGravityAccelerometerMean()-Z"                 
## [10] "TimeGravityAccelerometerSTD()-X"                  
## [11] "TimeGravityAccelerometerSTD()-Y"                  
## [12] "TimeGravityAccelerometerSTD()-Z"                  
## [13] "TimeBodyAccelerometerJerkMean()-X"                
## [14] "TimeBodyAccelerometerJerkMean()-Y"                
## [15] "TimeBodyAccelerometerJerkMean()-Z"                
## [16] "TimeBodyAccelerometerJerkSTD()-X"                 
## [17] "TimeBodyAccelerometerJerkSTD()-Y"                 
## [18] "TimeBodyAccelerometerJerkSTD()-Z"                 
## [19] "TimeBodyGyroscopeMean()-X"                        
## [20] "TimeBodyGyroscopeMean()-Y"                        
## [21] "TimeBodyGyroscopeMean()-Z"                        
## [22] "TimeBodyGyroscopeSTD()-X"                         
## [23] "TimeBodyGyroscopeSTD()-Y"                         
## [24] "TimeBodyGyroscopeSTD()-Z"                         
## [25] "TimeBodyGyroscopeJerkMean()-X"                    
## [26] "TimeBodyGyroscopeJerkMean()-Y"                    
## [27] "TimeBodyGyroscopeJerkMean()-Z"                    
## [28] "TimeBodyGyroscopeJerkSTD()-X"                     
## [29] "TimeBodyGyroscopeJerkSTD()-Y"                     
## [30] "TimeBodyGyroscopeJerkSTD()-Z"                     
## [31] "TimeBodyAccelerometerMagnitudeMean()"             
## [32] "TimeBodyAccelerometerMagnitudeSTD()"              
## [33] "TimeGravityAccelerometerMagnitudeMean()"          
## [34] "TimeGravityAccelerometerMagnitudeSTD()"           
## [35] "TimeBodyAccelerometerJerkMagnitudeMean()"         
## [36] "TimeBodyAccelerometerJerkMagnitudeSTD()"          
## [37] "TimeBodyGyroscopeMagnitudeMean()"                 
## [38] "TimeBodyGyroscopeMagnitudeSTD()"                  
## [39] "TimeBodyGyroscopeJerkMagnitudeMean()"             
## [40] "TimeBodyGyroscopeJerkMagnitudeSTD()"              
## [41] "FrequencyBodyAccelerometerMean()-X"               
## [42] "FrequencyBodyAccelerometerMean()-Y"               
## [43] "FrequencyBodyAccelerometerMean()-Z"               
## [44] "FrequencyBodyAccelerometerSTD()-X"                
## [45] "FrequencyBodyAccelerometerSTD()-Y"                
## [46] "FrequencyBodyAccelerometerSTD()-Z"                
## [47] "FrequencyBodyAccelerometerMeanFreq()-X"           
## [48] "FrequencyBodyAccelerometerMeanFreq()-Y"           
## [49] "FrequencyBodyAccelerometerMeanFreq()-Z"           
## [50] "FrequencyBodyAccelerometerJerkMean()-X"           
## [51] "FrequencyBodyAccelerometerJerkMean()-Y"           
## [52] "FrequencyBodyAccelerometerJerkMean()-Z"           
## [53] "FrequencyBodyAccelerometerJerkSTD()-X"            
## [54] "FrequencyBodyAccelerometerJerkSTD()-Y"            
## [55] "FrequencyBodyAccelerometerJerkSTD()-Z"            
## [56] "FrequencyBodyAccelerometerJerkMeanFreq()-X"       
## [57] "FrequencyBodyAccelerometerJerkMeanFreq()-Y"       
## [58] "FrequencyBodyAccelerometerJerkMeanFreq()-Z"       
## [59] "FrequencyBodyGyroscopeMean()-X"                   
## [60] "FrequencyBodyGyroscopeMean()-Y"                   
## [61] "FrequencyBodyGyroscopeMean()-Z"                   
## [62] "FrequencyBodyGyroscopeSTD()-X"                    
## [63] "FrequencyBodyGyroscopeSTD()-Y"                    
## [64] "FrequencyBodyGyroscopeSTD()-Z"                    
## [65] "FrequencyBodyGyroscopeMeanFreq()-X"               
## [66] "FrequencyBodyGyroscopeMeanFreq()-Y"               
## [67] "FrequencyBodyGyroscopeMeanFreq()-Z"               
## [68] "FrequencyBodyAccelerometerMagnitudeMean()"        
## [69] "FrequencyBodyAccelerometerMagnitudeSTD()"         
## [70] "FrequencyBodyAccelerometerMagnitudeMeanFreq()"    
## [71] "FrequencyBodyAccelerometerJerkMagnitudeMean()"    
## [72] "FrequencyBodyAccelerometerJerkMagnitudeSTD()"     
## [73] "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()"
## [74] "FrequencyBodyGyroscopeMagnitudeMean()"            
## [75] "FrequencyBodyGyroscopeMagnitudeSTD()"             
## [76] "FrequencyBodyGyroscopeMagnitudeMeanFreq()"        
## [77] "FrequencyBodyGyroscopeJerkMagnitudeMean()"        
## [78] "FrequencyBodyGyroscopeJerkMagnitudeSTD()"         
## [79] "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"    
## [80] "Angle(TimeBodyAccelerometerMean,Gravity)"         
## [81] "Angle(TimeBodyAccelerometerJerkMean),GravityMean)"
## [82] "Angle(TimeBodyGyroscopeMean,GravityMean)"         
## [83] "Angle(TimeBodyGyroscopeJerkMean,GravityMean)"     
## [84] "Angle(X,GravityMean)"                             
## [85] "Angle(Y,GravityMean)"                             
## [86] "Angle(Z,GravityMean)"                             
## [87] "Activity"                                         
## [88] "Subject"
```

# TRANSFORMATIONS - 5 outcomes of the "run_analysis.R" script:
```
## NB: Load the following packages if not already before the download

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

```
### Outcome 1: Merging the data into a singular dataset.
> - Three pairs of data (shared in the "train" and test datasets)
> were merged using the "rbind" function to create the, "subject", "activity"(y) and "feature"(x) datasets.
> - Column names for each of these datasets are prescribed before finalling using the "cbind" command to create a singular dataset ("full_data").

### Outcome 2: Extracting the mean and standard deviation results for each measurement.
> - The "grep" function is used to isolate the results of the mean() & std() from the "full_data" dataset.
> - The dimensions of the "full_data" dataset is then used with the results of the "grep" function to create the "isolated_columns" variable.
> - The dimensions of the "isolated_columns" variable are then applied to the "full_data" dataset to produce the "isolated_data" dataset.

### Outcome 3: Naming the activities in the dataset
> - The "Activity" variable is first transformed to character data instead of numeric data.
> - The "activity_labels" data can then be applied to the "isolated_data" dataset to provide a descriptive name of the activities in the dataset.

### Outcome 4: Labelling the dataset with descriptive variable names.
> - The "gsub" function is applied to the "isolated_data" dataset to expand all abbreviations and shortened words.
>> - "^t" to "Time"
>> - "^f" to "Frequency"
>> - "-mean()" to "Mean"
>> - "-std()" to "STD"
>> - "-freq()" to "Frequency"
>> - "Acc" to "Accelerometer"
>> - "Gyro" to "Gyroscope"
>> - "Mag" to "Magnitude"
>> - "angle" to "Angle"
>> - "gravity" to "Gravity"
>> - "tBody" to "TimeBody"

### Outcome 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
> - To ensure the correct function of the "dplyr" package, the "isolated_data" dataset will be set as "data.table"
> - The "isolated_data" dataset will then be renamed as "TidyData", the "subject" and "activity" columns will be grouped to allow the "mean" function to be applied to them.
> - Lastly, the "TidyData.txt" file will be created.
