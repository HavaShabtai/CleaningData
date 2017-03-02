# Getting and Cleaning Data

This repository performs the following operations on the input data. The script is going to read the training data as well as the test data, merge them together and create a new data.frame that includes mean and std observations. Then average all observation per columns for an specific subject and activity. To itemize, here are the operations performed on the dataset.

1) Merges the training and the test sets to create one data set.

2) Extracts only the measurements on the mean and standard deviation for each measurement.

3) Uses descriptive activity names to name the activities in the data set

4) Appropriately labels the data set with descriptive variable names. The label that we used are "subject" and "activity".

5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Raw data
