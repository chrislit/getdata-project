## Course Project Code Book

### Human Activity Recognition Using Smartphones Dataset

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Process

No transformations were performed on the data prior to loading in R

The run_analysis.R script assumes that data is in the ./UCI HAR Dataset/ directory (and subdirectories thereof).
Change line 6 to change this behavior.

When the script is run, two variables will result:
 - sensor.df: a 10299 x 68 dataframe containing all of the individual data points for each mean & std measurement,
   for each subject & activity.
 - subj.activity.means.df: a 180 x 68 dataframe containing the averages of mean & std for each subject & activity

For further details, see the accompanying README.md file.

### Data Frame Columns

The two data frames contain the same set of column names:
  1. Subject: An ID ranging from 1 to 30
  2. Activity: A factor from the set WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

And then a set of 66 numeric values drawn directly from the UCI HAR Dataset:
  3. tBodyAcc_mean_X
  3. tBodyAcc_mean_Y
  3. tBodyAcc_mean_Z
  3. tBodyAcc_std_X
  3. tBodyAcc_std_Y
  3. tBodyAcc_std_Z
  3. tGravityAcc_mean_X
  3. tGravityAcc_mean_Y
  3. tGravityAcc_mean_Z
  3. tGravityAcc_std_X
  3. tGravityAcc_std_Y
  3. tGravityAcc_std_Z
  3. tBodyAccJerk_mean_X
  3. tBodyAccJerk_mean_Y
  3. tBodyAccJerk_mean_Z
  3. tBodyAccJerk_std_X
  3. tBodyAccJerk_std_Y
  3. tBodyAccJerk_std_Z
  3. tBodyGyro_mean_X
  3. tBodyGyro_mean_Y
  3. tBodyGyro_mean_Z
  3. tBodyGyro_std_X
  3. tBodyGyro_std_Y
  3. tBodyGyro_std_Z
  3. tBodyGyroJerk_mean_X
  3. tBodyGyroJerk_mean_Y
  3. tBodyGyroJerk_mean_Z
  3. tBodyGyroJerk_std_X
  3. tBodyGyroJerk_std_Y
  3. tBodyGyroJerk_std_Z
  3. tBodyAccMag_mean
  3. tBodyAccMag_std
  3. tGravityAccMag_mean
  3. tGravityAccMag_std
  3. tBodyAccJerkMag_mean
  3. tBodyAccJerkMag_std
  3. tBodyGyroMag_mean
  3. tBodyGyroMag_std
  3. tBodyGyroJerkMag_mean
  3. tBodyGyroJerkMag_std
  3. fBodyAcc_mean_X
  3. fBodyAcc_mean_Y
  3. fBodyAcc_mean_Z
  3. fBodyAcc_std_X
  3. fBodyAcc_std_Y
  3. fBodyAcc_std_Z
  3. fBodyAccJerk_mean_X
  3. fBodyAccJerk_mean_Y
  3. fBodyAccJerk_mean_Z
  3. fBodyAccJerk_std_X
  3. fBodyAccJerk_std_Y
  3. fBodyAccJerk_std_Z
  3. fBodyGyro_mean_X
  3. fBodyGyro_mean_Y
  3. fBodyGyro_mean_Z
  3. fBodyGyro_std_X
  3. fBodyGyro_std_Y
  3. fBodyGyro_std_Z
  3. fBodyAccMag_mean
  3. fBodyAccMag_std
  3. fBodyBodyAccJerkMag_mean
  3. fBodyBodyAccJerkMag_std
  3. fBodyBodyGyroMag_mean
  3. fBodyBodyGyroMag_std
  3. fBodyBodyGyroJerkMag_mean
  3. fBodyBodyGyroJerkMag_std
