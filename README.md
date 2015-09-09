# GettingCleaningData
##Code Book
###This document describes the code inside run_analysis.R, and provide description for variables in the output dataset it generates. 

###The code has 6 steps (by comments):

* Initial setup (load libraries, set working directory)
* Step 1: Read and combine the training and the test datasets.
<br/> Read in measure data, activity and subject from subfolders "train" and "test"
<br/> Stack training and test datasets together, to get combined measure (cData), activity (Activity), and subject (Subject)
* Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
<br/> Read in the name of measurements in features.txt
<br/> Find the positions for all measures with text "mean()" or "std()"
<br/> Select only columns with mean and standard deviation from measurement data (cData)
<br/> Apply the text in features.txt to column names in measurement dataset (cData)
* Step 3: Uses descriptive activity names to name the activities in the data set
<br/> Read in Activity Labels
<br/> Merge Labels with Activity vector, and only keep descriptive activity names
* Step 4: Appropriately labels the data set with descriptive variable names.
<br/> Rename column names for Subject and Activity
<br/> Combine all data elements together into one dataset "callData": Subject, activity, mean and standard deviation of all measures
* Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
<br/> Create summarized dataset "tidyData", group by Subject and Activity
* Step 6: export tidy data to text file
<br/> Create a subfolder "Output" in current working directory, if it doesn't exist
<br/> Export "tidyData" to text file "tidyData.txt"

### List of Variables in the output dataset
<br/>Subject
<br/>Activity
<br/>tBodyAcc-mean()-X
<br/>tBodyAcc-mean()-Y
<br/>tBodyAcc-mean()-Z
<br/>tGravityAcc-mean()-X
<br/>tGravityAcc-mean()-Y
<br/>tGravityAcc-mean()-Z
<br/>tBodyAccJerk-mean()-X
<br/>tBodyAccJerk-mean()-Y
<br/>tBodyAccJerk-mean()-Z
<br/>tBodyGyro-mean()-X
<br/>tBodyGyro-mean()-Y
<br/>tBodyGyro-mean()-Z
<br/>tBodyGyroJerk-mean()-X
<br/>tBodyGyroJerk-mean()-Y
<br/>tBodyGyroJerk-mean()-Z
<br/>tBodyAccMag-mean()
<br/>tGravityAccMag-mean()
<br/>tBodyAccJerkMag-mean()
<br/>tBodyGyroMag-mean()
<br/>tBodyGyroJerkMag-mean()
<br/>fBodyAcc-mean()-X
<br/>fBodyAcc-mean()-Y
<br/>fBodyAcc-mean()-Z
<br/>fBodyAccJerk-mean()-X
<br/>fBodyAccJerk-mean()-Y
<br/>fBodyAccJerk-mean()-Z
<br/>fBodyGyro-mean()-X
<br/>fBodyGyro-mean()-Y
<br/>fBodyGyro-mean()-Z
<br/>fBodyAccMag-mean()
<br/>fBodyBodyAccJerkMag-mean()
<br/>fBodyBodyGyroMag-mean()
<br/>fBodyBodyGyroJerkMag-mean()
<br/>tBodyAcc-std()-X
<br/>tBodyAcc-std()-Y
<br/>tBodyAcc-std()-Z
<br/>tGravityAcc-std()-X
<br/>tGravityAcc-std()-Y
<br/>tGravityAcc-std()-Z
<br/>tBodyAccJerk-std()-X
<br/>tBodyAccJerk-std()-Y
<br/>tBodyAccJerk-std()-Z
<br/>tBodyGyro-std()-X
<br/>tBodyGyro-std()-Y
<br/>tBodyGyro-std()-Z
<br/>tBodyGyroJerk-std()-X
<br/>tBodyGyroJerk-std()-Y
<br/>tBodyGyroJerk-std()-Z
<br/>tBodyAccMag-std()
<br/>tGravityAccMag-std()
<br/>tBodyAccJerkMag-std()
<br/>tBodyGyroMag-std()
<br/>tBodyGyroJerkMag-std()
<br/>fBodyAcc-std()-X
<br/>fBodyAcc-std()-Y
<br/>fBodyAcc-std()-Z
<br/>fBodyAccJerk-std()-X
<br/>fBodyAccJerk-std()-Y
<br/>fBodyAccJerk-std()-Z
<br/>fBodyGyro-std()-X
<br/>fBodyGyro-std()-Y
<br/>fBodyGyro-std()-Z
<br/>fBodyAccMag-std()
<br/>fBodyBodyAccJerkMag-std()
<br/>fBodyBodyGyroMag-std()
<br/>fBodyBodyGyroJerkMag-std()
