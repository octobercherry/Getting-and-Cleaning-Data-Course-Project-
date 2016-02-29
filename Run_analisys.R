
## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for 
## each activity and each subject.
## Load reshape2 pacakge required
  library(reshape2)
## Load data of activity labels and features
  activity_labels <- read.table("./activity_labels.txt")$V2
  features <- read.table("./features.txt")$V2
## Load test data  
  x_test <- read.table("./test/X_test.txt")
  y_test <- read.table("./test/y_test.txt")
  subject_test <- read.table("./test/subject_test.txt")
## Name the x_test with features
  names(x_test) <- features
## Extract only the measurements on the mean and standard deviation for each measurement.
  mean_std <- grepl("mean|std", features)
  x_test <- x_test[, mean_std]
## Add activity labels to y_test
  y_test[, 2] <- activity_labels[y_test[, 1]]
## Name y_test and subject_test
  names(y_test) <- c("activity_ID", "activity_Label")
  names(subject_test) <- "subject"
## Merge the test data
  test_data <- cbind(subject_test, y_test, x_test)
## Load the train data
  x_train <- read.table("./train/X_train.txt")
  y_train <- read.table("./train/y_train.txt")
  subject_train <- read.table("./train/subject_train.txt")
## Name x_train with features
  names(x_train) <- features
## Extract only the measurements on the mean and standard deviation for each measurement.
  x_train <- x_train[, mean_std]
## Add activity labels to y_train
  y_train[, 2] <- activity_labels[y_train[, 1]]
  ## Name y_test and subject_test
  names(y_train) <- c("activity_ID", "activity_Label")
  names(subject_train) <- "subject"
## Merge the train data
  train_data <- cbind(subject_train, y_train, x_train)
## Merge the test and train data
  big_data <- rbind(test_data, train_data)
## Creates a second, independent tidy data set with the average of each variable for 
## each activity and each subject.
  melted <- melt(big_data, id=c("subject", "activity_ID", "activity_Label"))
  tidy_data <- dcast(melted, subject+activity_ID+activity_Label ~ variable, mean)
  write.csv(tidy_data, "tidy_data.csv", row.names= FALSE)
