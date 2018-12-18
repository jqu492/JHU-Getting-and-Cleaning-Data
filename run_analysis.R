url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,
              destfile='HAR.zip',
              mode="wb") # "wb" means "write binary," and is used for binary files
unzip(zipfile = "HAR.zip") # unpack the files into subdirectories 
dateDownloaded <- date() # record the date the data was downloaded
library(dplyr)

#read in various files
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

train_data <- cbind(subject_train, y_train, x_train)#combine train data
test_data <- cbind(subject_test, y_test, x_test) #combine test data

total_data <- rbind(train_data, test_data) #Merges the training and the test sets to create one data set.(step 1)

colnames(total_data) <- c("subject", "activity", as.character(features$V2)) #Appropriately labels the data set with descriptive variable names.(step 4) 

extracted_data <- total_data[, c(1,2,grep("mean|std", colnames(total_data)))] #Extracts only the measurements on the mean and standard deviation for each measurement.(step 2)

tidy_data <- extracted_data %>% mutate(activity = activity_labels[activity,2]) #Uses descriptive activity names to name the activities in the data set (step 3)

colnames(tidy_data) <- gsub("\\()", "", colnames(tidy_data)) #Cleaning up variable names by removing "()"

average_table <- tidy_data %>% group_by(subject, activity) %>% summarise_all(mean) #From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.(step 5)

