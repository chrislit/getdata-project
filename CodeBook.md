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
  3. 
  3. 
