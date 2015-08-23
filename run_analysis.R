# Here are the data for the project:
#   
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# 
# You should create one R script called run_analysis.R that does the following. 
# 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Load required libraries
library(plyr) # To use the revalue command
library(dplyr)

# Load Raw Data
setwd("C:/_Renato/UFSC/Extensao/2015/Coursera/Getting and Cleaning Data/Course Project")

testRaw<-read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE)
trainRaw<-read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE)

activityLabels<-read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE)

# Assign column names to raw data
colNames<-read.table("UCI HAR Dataset/features.txt", header=FALSE)
colnames(testRaw)<-colNames$V2
colnames(trainRaw)<-colNames$V2

# Create new Columns with Subject and Activity
#Subject
testSubjects<-read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE) # File with vector (list) of subject codes for all 2947 observations
trainSubjects<-read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE) # File with vector (list) of subject codes for all 7352 observations

testRaw$subject<-testSubjects$V1 # File with activities code for all 2974 observations
trainRaw$subject<-trainSubjects$V1 # File with activities code for all 7352 observations

# Activities
testLabels<-read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE) # File with activity labels for all 2974 observations
trainLabels<-read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE) # File with activity labels for all 7352 observations

testRaw$activity<-testLabels$V1
trainRaw$activity<-trainLabels$V1

# Merge Train and Test Datasets
rawData<-rbind(testRaw,trainRaw)

# Label activities with more descriptive names
rawData$activity<-as.factor(rawData$activity)
rawData$activity<-revalue(rawData$activity, c("1"="walking","2"="walking upstairs","3"="walking downstairs","4"="sitting","5"="standing","6"="laying"))

# Identify columns with "mean" or "std" in their names
relevantColumns1<-grep("mean",names(rawData)) # returns a vector with the indexes of all columns with "mean" in its name
relevantColumns2<-grep("std",names(rawData)) # returns a vector with the indexes of all columns with "std" in its name
relevantColumns<-c(relevantColumns1,relevantColumns2) # combine both vectors

# Subset RawData to include only relevant columns
rawData2<-rawData[,c(relevantColumns,562,563)] # include only columns identified in previous step

# Give more meaningful names to columns
newNames<- gsub("Acc", "Acceleration", names(rawData2))
newNames<-gsub("Gyro", "AngularVelocity", newNames)
newNames<-gsub("Mag", "Magnitude", newNames)
colnames(rawData2)<-newNames

# Summarize by subject and activity
groups<-group_by(rawData2,subject,activity)
tidyData<-summarise_each(groups,funs(mean))

# Save as TXT file
write.table(tidyData, "tidyData.txt",row.names=FALSE)