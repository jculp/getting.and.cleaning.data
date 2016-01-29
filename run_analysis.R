setwd("H:/getting.and.cleaning.data")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
path    <- getwd()

download.file(fileUrl, destfile = paste0(path, ".zip"))
unzip(paste0(path, ".zip"), exdir = path)

# 1. Merges the training and the test sets to create one data set.
trainX     <- read.table(paste0(path, "/UCI HAR Dataset/train/X_train.txt"))
trainX$set <- "train"
testX      <- read.table(paste0(path, "/UCI HAR Dataset/test/X_test.txt"))
testX$set  <- "test"
x          <- rbind(trainX, testX)

features <- read.table(paste0(path, "/UCI HAR Dataset/features.txt"))
features <- as.character(features[, 2])
names(x) <- features
rm(trainX, testX)

trainY   <- read.table(paste0(path, "/UCI HAR Dataset/train/y_train.txt"))
testY    <- read.table(paste0(path, "/UCI HAR Dataset/test/y_test.txt"))
y        <- rbind(trainY, testY)
names(y) <- "activity.code"
rm(trainY, testY)

trainSubject   <- read.table(paste0(path, "/UCI HAR Dataset/train/subject_train.txt"))
testSubject    <- read.table(paste0(path, "/UCI HAR Dataset/test/subject_test.txt"))
subject        <- rbind(trainSubject, testSubject)
names(subject) <- "subject"
rm(trainSubject, testSubject)

data <- cbind(y, subject, x)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
#https://github.com/jculp/getting.and.cleaning.data/blob/master/README.md
features.all      <- names(data)
features.mean.std <- features.all[grepl("mean|std|activity|subject", tolower(features.all))]
data.mean.std     <- data[, features.mean.std]

# 3. Uses descriptive activity names to name the activities in the data set.

activity.labels          <- read.table(paste0(path,"/UCI HAR Dataset/activity_labels.txt"))
names(activity.labels)   <- c("activity.code", "activity")
activity.labels$activity <- tolower(activity.labels$activity)
activity.labels$activity <- gsub("_", ".", activity.labels$activity)

data.mean.std <- merge(activity.labels, data.mean.std)
data.mean.std$activity.code <- NULL

# 4. Appropriately labels the data set with descriptive variable names.

features.mean.std       <- names(data.mean.std)
features.mean.std.clean <- features.mean.std
features.mean.std.clean <- tolower(features.mean.std.clean)
features.mean.std.clean <- gsub("\\(|\\)","",features.mean.std.clean)
features.mean.std.clean <- gsub("-|,",".",features.mean.std.clean)
names(data.mean.std)    <- features.mean.std.clean

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(dplyr)
data.tidy <- data.frame(summarize_each(group_by(data.mean.std, activity, subject), funs(mean)))
write.table(data.tidy, paste0(path,"/data.tidy.txt"), row.names = FALSE)
