# Read features.txt into a table and extract the set of features that end in -mean() or -std()
features <- read.table(file = "./UCI HAR Dataset/features.txt")
means_and_stds <- features[grep("-(mean|std)\\(\\)", features$V2) ,1]

# Read the test and train data from disk (separately)
test_data <- read.table(file = "./UCI HAR Dataset/test/X_test.txt")
test_data <- test_data[,means_and_stds]
train_data <- read.table(file = "./UCI HAR Dataset/train/X_train.txt")
train_data <- train_data[,means_and_stds]

# rbind the data together and label the variables using the feature names from features
sensor_data <- rbind(test_data, train_data)
names(sensor_data) <- features[means_and_stds,2]

# Clear no longer needed data from memory
rm(test_data, train_data, features, means_and_stds)

# Store the mean of each variable in a new data frame
mean_sensor_data <- sapply(sensor_data, mean)
