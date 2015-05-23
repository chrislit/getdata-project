#!/usr/bin/env Rscript
library(dplyr)

# Helper functions
expand.path <- function(fn) {
  data.dir = "./UCI HAR Dataset/"
  paste(data.dir, fn, sep="")
}

# Read features.txt into a df and extract the set of features that end in -mean() or -std()
features <- read.table(file = expand.path("features.txt"))
means.and.stds <- features[grep("-(mean|std)\\(\\)", features$V2) ,1]

# Read activity_labels.txt into a df
activity <- read.table(file = expand.path("activity_labels.txt"),
                       colClasses=c("NULL", "character"),
                       col.names=c("NULL", "type"))

# Read the test data from disk and subset to means & stds
test.df <- read.table(file = expand.path("test/X_test.txt"))
test.df <- test.df[,means.and.stds]
# Add subject & activity columns to the left
test.df <- cbind(read.table(file = expand.path("test/subject_test.txt")),
                 read.table(file = expand.path("test/y_test.txt")),
                 test.df)

# Read the train data from disk and subset to means & stds
train.df <- read.table(file = expand.path("train/X_train.txt"))
train.df <- train.df[,means.and.stds]
# Add subject & activity columns to the left
train.df <- cbind(read.table(file = expand.path("train/subject_train.txt")),
                 read.table(file = expand.path("train/y_train.txt")),
                 train.df)

# rbind the data together and label the variables using the feature names from features
sensor.df <- rbind(test.df, train.df)
names(sensor.df) <- c("Subject", "Activity", as.character(features[means.and.stds,2]))

# Substitute descriptive names for activities
sensor.df$Activity <- activity$type[sensor.df$Activity]

# Clear no longer needed data from memory
rm(test.df, train.df, features, means.and.stds, activity)

# Store the mean of each variable in a new data frame
subj.activity.means.df <-sensor.df %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

# Write the table to disk for submission
write.table(subj.activity.means.df, file="SubjectActivityMeans.txt", row.names = FALSE)
