#Data Code Book

Before reading this codebook, I strongly recommend to take a look at the raw data and also read the readme.txt file associated with the raw data in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The you can read the readme.txt in this repository that explains the operations that was performed on the data.

Here are all the steps that my script is doing on the data. There is a comment on the run_analysis.R associated with each of the steps below.

1) Reading training data from txt files.

2) Reading test data from txt files.

3) Reading features and activity labels from txt files.

4) Extractining measurements on the mean and standard deviation from each measurement.

5) Binding subject and activity columns into the mean and std columns of the test data set.

6) Binding subject and activity columns into the mean and std columns of the training data set.

7) Merging training and test data sets into one data set.

8) Renaming column names into subject and activity.

9) Changing activity column from numbers to the corresponding activiy.

10) Changing subject and activity columns from numeric and characters into factors.

11) Calculating mean on each columns with respect to a given "subject-activity" pair.

12) Writing the output into a txt file.

The tidy output data is going to include 81 columns.

"1","subject"

"2","activity"

"3","tBodyAcc-mean-X"

"4","tBodyAcc-mean-Y"

"5","tBodyAcc-mean-Z"

"6","tBodyAcc-std-X"

"7","tBodyAcc-std-Y"

"8","tBodyAcc-std-Z"

"9","tGravityAcc-mean-X"

"10","tGravityAcc-mean-Y"

"11","tGravityAcc-mean-Z"

"12","tGravityAcc-std-X"

"13","tGravityAcc-std-Y"

"14","tGravityAcc-std-Z"

"15","tBodyAccJerk-mean-X"

"16","tBodyAccJerk-mean-Y"

"17","tBodyAccJerk-mean-Z"

"18","tBodyAccJerk-std-X"

"19","tBodyAccJerk-std-Y"

"20","tBodyAccJerk-std-Z"

"21","tBodyGyro-mean-X"

"22","tBodyGyro-mean-Y"

"23","tBodyGyro-mean-Z"

"24","tBodyGyro-std-X"

"25","tBodyGyro-std-Y"

"26","tBodyGyro-std-Z"

"27","tBodyGyroJerk-mean-X"

"28","tBodyGyroJerk-mean-Y"

"29","tBodyGyroJerk-mean-Z"

"30","tBodyGyroJerk-std-X"

"31","tBodyGyroJerk-std-Y"

"32","tBodyGyroJerk-std-Z"

"33","tBodyAccMag-mean"

"34","tBodyAccMag-std"

"35","tGravityAccMag-mean"

"36","tGravityAccMag-std"

"37","tBodyAccJerkMag-mean"

"38","tBodyAccJerkMag-std"
"39","tBodyGyroMag-mean"
"40","tBodyGyroMag-std"
"41","tBodyGyroJerkMag-mean"
"42","tBodyGyroJerkMag-std"
"43","fBodyAcc-mean-X"
"44","fBodyAcc-mean-Y"
"45","fBodyAcc-mean-Z"
"46","fBodyAcc-std-X"
"47","fBodyAcc-std-Y"
"48","fBodyAcc-std-Z"
"49","fBodyAcc-meanFreq-X"
"50","fBodyAcc-meanFreq-Y"
"51","fBodyAcc-meanFreq-Z"
"52","fBodyAccJerk-mean-X"
"53","fBodyAccJerk-mean-Y"
"54","fBodyAccJerk-mean-Z"
"55","fBodyAccJerk-std-X"
"56","fBodyAccJerk-std-Y"
"57","fBodyAccJerk-std-Z"
"58","fBodyAccJerk-meanFreq-X"
"59","fBodyAccJerk-meanFreq-Y"
"60","fBodyAccJerk-meanFreq-Z"
"61","fBodyGyro-mean-X"
"62","fBodyGyro-mean-Y"
"63","fBodyGyro-mean-Z"
"64","fBodyGyro-std-X"
"65","fBodyGyro-std-Y"
"66","fBodyGyro-std-Z"
"67","fBodyGyro-meanFreq-X"
"68","fBodyGyro-meanFreq-Y"
"69","fBodyGyro-meanFreq-Z"
"70","fBodyAccMag-mean"
"71","fBodyAccMag-std"
"72","fBodyAccMag-meanFreq"
"73","fBodyBodyAccJerkMag-mean"
"74","fBodyBodyAccJerkMag-std"
"75","fBodyBodyAccJerkMag-meanFreq"
"76","fBodyBodyGyroMag-mean"
"77","fBodyBodyGyroMag-std"
"78","fBodyBodyGyroMag-meanFreq"
"79","fBodyBodyGyroJerkMag-mean"
"80","fBodyBodyGyroJerkMag-std"
"81","fBodyBodyGyroJerkMag-meanFreq"
