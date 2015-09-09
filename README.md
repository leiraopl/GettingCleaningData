# GettingCleaningData
##Code Book
###This document describes the code inside run_analysis.R.  

###The code has 6 steps (by comments):

* Initial setup (load libraries, set working directory)
* Step 1: Read and combine the training and the test sets.
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
