# Getting_And_Cleaning_Data_Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

Review criterialess 
The submitted data set is tidy.
The Github repo contains the required scripts.
GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
The README that explains the analysis files is clear and understandable.
The work submitted for this project is the work of the student who submitted it.
Getting and Cleaning Data Course Projectless 
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Good luck!

# Code Book 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

# Variables Description
tbodyaccmeanx
time body accelerometer signal in x direction mean

tbodyaccmeany
time body accelerometer signal in y direction mean

tbodyaccmeanz
time body accelerometer signal in z direction mean

tbodyaccstdx
time body accelerometer signal in x direction standard deviation

tbodyaccstdy
time body accelerometer signal in y direction standard deviation

tbodyaccstdz
time body accelerometer signal in z direction standard deviation

tgravityaccmeanx
gravity accelerometer signal in x direction mean

tgravityaccmeany
time gravity accelerometer signal in y direction mean

tgravityaccmeanz
time gravity accelerometer signal in z direction mean

tgravityaccstdx
time gravity accelerometer signal in x direction standard deviation

tgravityaccstdy
time gravity accelerometer signal in y direction standard deviation

tgravityaccstdz
time gravity accelerometer signal in z direction standard deviation

tbodyaccjerkmeanx
time body accelerometer jerk signal in x direction mean

tbodyaccjerkmeany
time body accelerometer jerk signal in y direction mean

tbodyaccjerkmeanz
time body accelerometer jerk signal in z direction mean

tbodyaccjerkstdx
time body accelerometer jerk signal in x direction standard deviation

tbodyaccjerkstdy
time body accelerometer jerk signal in y direction standard deviation

tbodyaccjerkstdz
time body accelerometer jerk signal in z direction standard deviation

tbodygyromeanx
time body gyroscope signal in x direction mean

tbodygyromeany
time body gyroscope signal in y direction mean

tbodygyromeanz
time body gyroscope signal in z direction mean

tbodygyrostdx
time body gyroscope signal in x direction standard deviation

tbodygyrostdy
time body gyroscope signal in y direction standard deviation

tbodygyrostdz
time body gyroscope signal in z direction standard deviation

tbodygyrojerkmeanx
time body gyroscope jerk signal in x direction mean

tbodygyrojerkmeany
time body gyroscope jerk signal in y direction mean

tbodygyrojerkmeanz
time body gyroscope jerk signal in z direction mean

tbodygyrojerkstdx
time body gyroscope jerk signal in x direction standard deviation

tbodygyrojerkstdy
time body gyroscope jerk signal in y direction standard deviation

tbodygyrojerkstdz
time body gyroscope jerk signal in z direction standard deviation

tbodyaccmagmean
time body gyroscope accelerometer mean signal

tbodyaccmagstd
time body gyroscope accelerometer mean standard deviation

tgravityaccmagmean
time gravity accelerometer magnitude signal mean

tgravityaccmagstd
time gravity accelerometer magnitude signal standard deviation

tbodyaccjerkmagmean
time body accelerometer jerk magnitude mean

tbodyaccjerkmagstd
time body accelerometer jerk magnitude standard deviation

tbodygyromagmean
time body gyroscope magnitude mean

tbodygyromagstd
time body gyroscope magnitude standard deviation

tbodygyrojerkmagmean
time body gyroscope jerk magnitude mean

tbodygyrojerkmagstd
time body gyroscope jerk magnitude standard deviation

fbodyaccmeanx
frequency body accelerometer signal in x direction mean

fbodyaccmeany
frequency body accelerometer signal in y direction mean

fbodyaccmeanz
frequency body accelerometer signal in z direction mean

fbodyaccstdx
frequency body accelerometer signal in x direction standard deviation

fbodyaccstdy
frequency body accelerometer signal in y direction standard deviation

fbodyaccstdz
frequency body accelerometer signal in z direction standard deviation

fbodyaccjerkmeanx
frequency body accelerometer jerk signal in x direction mean

fbodyaccjerkmeany
frequency body accelerometer jerk signal in y direction mean

fbodyaccjerkmeanz
frequency body accelerometer jerk signal in z direction mean

fbodyaccjerkstdx
frequency body accelerometer jerk signal in x direction standard deviation

fbodyaccjerkstdy
frequency body accelerometer jerk signal in y direction standard deviation

fbodyaccjerkstdz
frequency body accelerometer jerk signal in z direction standard deviation

fbodygyromeanx
frequency body gyroscope signal in x direction mean

fbodygyromeany
frequency body gyroscope signal in y direction mean

fbodygyromeanz
frequency body gyroscope signal in z direction mean

fbodygyrostdx
frequency body gyroscope signal in x direction standard deviation

fbodygyrostdy
frequency body gyroscope signal in y direction standard deviation

fbodygyrostdz
frequency body gyroscope signal in z direction standard deviation

fbodyaccmagmean
frequency body accelerometer magnitude mean

fbodyaccmagstd
frequency body accelerometer magnitude standard deviation

fbodybodyaccjerkmagmean
frequency body accelerometer jerk magnitude mean

fbodybodyaccjerkmagstd
frequency body accelerometer jerk magnitude standard deviation

fbodybodygyromagmean
frequency body gyroscope magnitude mean

fbodybodygyromagstd
frequency body gyroscope magnitude standard deviation

fbodybodygyrojerkmagmean frequency body gyroscope jerk magnitude mean

fbodybodygyrojerkmagstd frequency body gyroscope jerk magnitude standard deviation
