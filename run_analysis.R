# Reading training data from txt files
subject_train <- read.table("RScripts\\Dataset\\UCIHARDataset\\train\\subject_train.txt", stringsAsFactors = FALSE)
x_train <- read.table("RScripts\\Dataset\\UCIHARDataset\\train\\X_train.txt", stringsAsFactors = FALSE)
y_train <- read.table("RScripts\\Dataset\\UCIHARDataset\\train\\y_train.txt", stringsAsFactors = FALSE)

# Reading test data from txt files
subject_test <- read.table("RScripts\\Dataset\\UCIHARDataset\\test\\subject_test.txt", stringsAsFactors = FALSE)
x_test <- read.table("RScripts\\Dataset\\UCIHARDataset\\test\\X_test.txt", stringsAsFactors = FALSE)
y_test <- read.table("RScripts\\Dataset\\UCIHARDataset\\test\\y_test.txt", stringsAsFactors = FALSE)

# Reading features and activity labels from txt files
feats <- read.table("RScripts\\Dataset\\UCIHARDataset\\features.txt", stringsAsFactors = FALSE)
activity_labels <- read.table("RScripts\\Dataset\\UCIHARDataset\\activity_labels.txt", stringsAsFactors = FALSE)

# Extractining measurements on the mean and standard deviation from each measurement
meanAndStdRows <- grep(".*mean.*|.*std.*", feats[,2])
meanAndStdFeat <- feats[meanAndStdRows,2]
meanAndStdFeatNames <- gsub('[()]', '', meanAndStdFeat)

#binding subject and activity columns into the mean and std columns of the test data set.
testData <- cbind(subject_test, y_test, x_test[meanAndStdRows])

#binding subject and activity columns into the mean and std columns of the training data set.
trainingData <- cbind(subject_train, y_train, x_train[meanAndStdRows])

#merging training and test data sets into one data set.
mergedData <- rbind(trainingData,testData)

# renaming column names into subject and activity
colnames(mergedData) <- c("subject", "activity", as.character(meanAndStdFeatNames))

# changing activity column from numbers to the corresponding activiy
mergedData$activity <- activity_labels[mergedData$activity,]$V2

# changing subject and activity columns from numeric and characters into factors
mergedData$subject <- as.factor(mergedData$subject)
mergedData$activity <- as.factor(mergedData$activity)

# calculating mean on each columns with respect to a given "subject-activity" pair
tidy_mean_data <- aggregate(mergedData[3:81],by=list(mergedData$subject, mergedData$activity), mean)
colnames(tidy_mean_data) <- c("subject", "activity", as.character(meanAndStdFeatNames))

# writing the output into a txt file
write.table(tidy_mean_data, "tidy.txt", row.names = FALSE, quote = FALSE)
