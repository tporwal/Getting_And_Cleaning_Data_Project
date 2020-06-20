# Following actions to be performed:
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set.
# Appropriately labels the data set with descriptive variable names.
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#Dataset is already downloaded.

library(dplyr)
#Getting the current working directory and placing the dataset in the current working directory.
getwd()
unzip("getdata_projectfiles_UCI HAR Dataset.zip")

#Making the Data Frame.
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
#For Test Set.
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
#For Training Set
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

# Now, Merging the training and the test sets to create one data set.
X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)
Merged_Data <- cbind(subject, Y, X)

#After, merging now Extracting the measurements on the mean and standard deviation for each measurement.
tidyData <- Merged_Data %>% select(subject, code, contains("mean"), contains("std"))

# Using descriptive activity names to name the activities in the data set.
tidyData$code <- activities[tidyData$code, 2]

#Now, lablling the dataset
names(tidyData)[2] = "activity"
names(tidyData)<-gsub("Acc", "Accelerometer", names(tidyData))
names(tidyData)<-gsub("Gyro", "Gyroscope", names(tidyData))
names(tidyData)<-gsub("BodyBody", "Body", names(tidyData))
names(tidyData)<-gsub("Mag", "Magnitude", names(tidyData))
names(tidyData)<-gsub("^t", "Time", names(tidyData))
names(tidyData)<-gsub("^f", "Frequency", names(tidyData))
names(tidyData)<-gsub("tBody", "TimeBody", names(tidyData))
names(tidyData)<-gsub("-mean()", "Mean", names(tidyData), ignore.case = TRUE)
names(tidyData)<-gsub("-std()", "StandardDeviation", names(tidyData), ignore.case = TRUE)
names(tidyData)<-gsub("-freq()", "Frequency", names(tidyData), ignore.case = TRUE)
names(tidyData)<-gsub("angle", "Angle", names(tidyData))
names(tidyData)<-gsub("gravity", "Gravity", names(tidyData))


finalTidyData <- tidyData %>% group_by(subject, activity) %>% summarise_all(funs(mean))
write.table(finalTidyData, "finalTidyData.txt", row.name=FALSE)

str(finalTidyData)

#Printing the finalTidyData
finalTidyData

