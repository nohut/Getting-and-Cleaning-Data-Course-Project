The data used in this project is the data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original data for the project can be accessed from the following link.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The zip file content was extracted to the R work directory and it was assumed that “UCI HAR Dataset” directory was located under R’s work directory.

By using run_analysis.R code:  

1.The training and the test sets were merged into one dataset.
2.Column names for each measurement were obtained from features.txt dataset.
3.Only the measurements on the mean and standard deviation for each measurement were extracted. 
4.Activity Id information in the original files were replaced with their descriptive activity names from the activity_labels.txt dataset.
5.The resulting data frame with the average of each variable for each activity and each subject was saved as another independent tidy data set named “run_analysis_output.txt” under the work directory. 
6.The output file contains the following columns:

subjectid : The id of the participant.
activityid : Name of the activity.

The following columns are the average of the standard deviation and mean variables obtained from the original file. For more information about these variables, please check “features_info.txt” file that was submitted within the original project zip file specified above.

tBodyAccmeanX 
tBodyAccmeanY 
tBodyAccmeanZ 
tBodyAccstdX 
tBodyAccstdY 
tBodyAccstdZ 
tGravityAccmeanX
tGravityAccmeanY 
tGravityAccmeanZ 
tGravityAccstdX 
tGravityAccstdY 
tGravityAccstdZ 
tBodyAccJerkmeanX 
tBodyAccJerkmeanY
tBodyAccJerkmeanZ 
tBodyAccJerkstdX
tBodyAccJerkstdY 
tBodyAccJerkstdZ
tBodyGyromeanX 
tBodyGyromeanY
tBodyGyromeanZ 
tBodyGyrostdX 
tBodyGyrostdY 
tBodyGyrostdZ 
tBodyGyroJerkmeanX 
tBodyGyroJerkmeanY 
tBodyGyroJerkmeanZ 
tBodyGyroJerkstdX
tBodyGyroJerkstdY
tBodyGyroJerkstdZ
tBodyAccMagmean 
tBodyAccMagstd
tGravityAccMagmean 
tGravityAccMagstd
tBodyAccJerkMagmean
tBodyAccJerkMagstd 
tBodyGyroMagmean 
tBodyGyroMagstd
tBodyGyroJerkMagmean 
tBodyGyroJerkMagstd
fBodyAccmeanX 
fBodyAccmeanY 
fBodyAccmeanZ 
fBodyAccstdX
fBodyAccstdY
fBodyAccstdZ
fBodyAccJerkmeanX
fBodyAccJerkmeanY
fBodyAccJerkmeanZ 
fBodyAccJerkstdX
fBodyAccJerkstdY
fBodyAccJerkstdZ
fBodyGyromeanX
fBodyGyromeanY
fBodyGyromeanZ 
fBodyGyrostdX
fBodyGyrostdY 
fBodyGyrostdZ
fBodyAccMagmean 
fBodyAccMagstd
fBodyBodyAccJerkMagmean
fBodyBodyAccJerkMagstd 
fBodyBodyGyroMagmean 
fBodyBodyGyroMagstd
fBodyBodyGyroJerkMagmean 
fBodyBodyGyroJerkMagstd
