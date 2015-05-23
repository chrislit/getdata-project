No transformations were performed on the data prior to loading in R

The run_analysis.R script assumes that data is in the ./UCI HAR Dataset/ directory (and subdirectories thereof).
Change line 6 to change this behavior.

When the script is run, two variables will result:
 - sensor.df: a 10299 x 68 dataframe containing all of the individual data points for each mean & std measurement,
   for each subject & activity.
 - subj.activity.means.df: a 180 x 68 dataframe containing the averages of mean & std for each subject & activity
