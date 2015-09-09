# initial setup
library(dplyr)
setwd("C:/Users/lrao/Documents/R/coursera/course3/UCI HAR Dataset")

# Step 1: Merges the training and the test sets to create one data set.
trainData <- read.table(file.path("train","X_train.txt"))
testData <- read.table(file.path("test","X_test.txt")) 
cData <- rbind(trainData, testData) 
#dim(trainData)
#dim(testData)
#dim(cData)
trainActivity <- read.table(file.path("train","y_train.txt"))
testActivity <- read.table(file.path("test","y_test.txt"))
Activity <- rbind(trainActivity, testActivity)
#dim(Activity)
#dim(trainActivity)
#dim(testActivity)
trainSubject <- read.table(file.path("train","subject_train.txt"))
testSubject <- read.table(file.path("test","subject_test.txt"))
Subject <- rbind(trainSubject, testSubject) 
#dim(Subject)
#dim(trainSubject)
#dim(testSubject)

# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table(file.path("features.txt"))
vname <- features[,2]
names(cData) <- vname
#head(cData)
meanIndex <- grep("mean()", vname, fixed = TRUE)
stdIndex <- grep("std()", vname)
meanData <- cData[,meanIndex]
stdData <- cData[,stdIndex]
#dim(meanData)
#dim(stdData)

# Step 3: Uses descriptive activity names to name the activities in the data set
actLabel <- read.table(file.path("activity_labels.txt"))
mergeActivity <- merge ( Activity, actLabel, by.x = "V1", by.y = "V1")
Activity <- mergeActivity[,2]

# Step 4: Appropriately labels the data set with descriptive variable names. 
names(Activity) <- c("Activity")
names(Subject) <- c("Subject")
callData <- cbind(Subject, Activity, meanData, stdData)


# Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidyData <- callData %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

# Step 6: export tidy data to text file
dir.create(file.path("Output"), showWarnings = FALSE)
write.table(tidyData, file.path("Output","tidyData.txt"),row.name=FALSE)
