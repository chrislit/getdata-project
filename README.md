# getdata-project
Course project for Coursera Getting and Cleaning Data

run_analysis.R works as follows:
 1. "features.txt" is read into a data.frame and those column names which include "-mean()" or "-std()"
    are extracted to the vector means.and.stds.
 2. "activity_labels.txt" is read into a data.frame, omitting its first column.
 3. The test data is read from "test/X_test.txt" and those columns listed in means.and.stds are subsetted
    into the test.df data.frame.
 4. The contents of "test/subject_test.txt" (subject ids) and "test/y_test.txt" (activity ids) are
    added to test.df as its first two columns.
 5. Steps 3 & 4 are repeated for the training data and stored in train.df.
 6. test.df and train.df are combined with rbind and stored as sensor.df.
 7. Column labels are applied to sensor.df.
 8. Activity ids are converted to activity names from "activity_labels.txt".
 9. Temporary variables are purged from memory.
 10. subj.activity.means.df is created by grouping by Subject & Activity and applying the mean function to
     the values in each of the other columns (using summarise_each(funs(mean))).
 11. The resulting table is written to disk for submission.
