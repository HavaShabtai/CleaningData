# Getting and Cleaning Data

This repository performs the following operations on the input data. The script is going to read the training data as well as the test data, merge them together and create a new data.frame that includes mean and std observations. Then average all observation per columns for an specific subject and activity. To itemize, here are the operations performed on the dataset.

1) Merges the training and the test sets to create one data set.

2) Extracts only the measurements on the mean and standard deviation for each measurement.

3) Uses descriptive activity names to name the activities in the data set

4) Appropriately labels the data set with descriptive variable names. The label that we used are "subject" and "activity".

5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Raw data

The source of raw data can be found in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. There is a readme file once you open the zip file that incldues more information.

##Codebook
You can look at the codebook.md to get more information on the operations performed on the data.

## Structure of this repository

In adition to this ReadMe file, we are going to have three other files.

* Codebook.md
This is going to include all the varialbes of the output tidy dataset.

* run_analysis.R
This is going to be the main script that is performing the operation. More information can be found in the comments and also in the codebook.

* Tidy.txt
This file includes the output of the script based on the input data.
