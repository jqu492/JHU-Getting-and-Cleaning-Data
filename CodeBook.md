CodeBook
Data used: Human Activity Recognition Using Smartphones Dataset
Version 1.0

Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

Final data table: average_table
Description:
The average_table contains 180 observations of 81 variables. It summarizes the mean of each variable per activity for each subject. 

Variable Names
Token       Description
subject     the subject who performed the activities. range of 1-30
activity    one of the six activities the subject performed. (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
t           time domain signals
f           frequency domain signals
Acc         accelerometer
Gyro        gyroscope
BodyAcc     body acceleration signals
GravityAcc  gravity acceleration signals
BodyAccJerk Jerk signals
BodyGyroJerkJerk signals
Mag         magnitude of three-dimensional signals calculated w/ Euclidean norm
X/Y/Z       3-axial signal directions
mean        mean value
std         standard deviation

Data Transformation
To obtain the final data (average_table), first merge the test and train data and combine the subject and activity columns to the merged data table. 
Then label the variables with the features.txt and replace the activity column with the more descriptive activity names (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 
Extract only the columns where the variable is of either mean or standard deviation.
Finally, calculate the mean of each variable per activity for each subject using the function summarize_all(). 

Reference 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.




