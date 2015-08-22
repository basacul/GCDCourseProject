# CodeBook
====================================================================================
This codebook describes the source of the data, the processing of the data,
and especially the variable names of the output data set of run_analysis.R : 
the tidydata.txt file.

## 1. Data Source
-------------------

Downloaded source:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The dataset from the link above carries the data collected from the accelerometers and gyroscope measurements from the Samsung Galaxy S smartphone during an experiment carried out with a group of 30 volunteers within an age bracket of 19 - 48 years. Six activities were performed (walking, walking upstairs, walking downstairs, sitting, standing and laying) wearing a Samsung Galaxy S II on the waist.

In the README.txt file of the downloaded dataset you can find further information about what is provided for each record as well as which files the dataset from the source url includes.

## 2. Transformation of the data
----------------------------------

1. Merging of the training and test sets into one data set without considering its subfolders (which can be found in each test and train directory)
2. Naming of the variable names in the data set as found in the features.txt file of the source dataset 
3. Extraction of all variable names containing 'mean' or 'std'
4. Appropriate labeling of the activities with one of the six activities mentioned above 
5. Calculation of the mean for each subject and activity and creation of a new tidy data set called tidydata.txt with clearly specified and useful variable names described in the features info text file
   
## 3. Variable Descriptions
-----------------------------

| Variable | Description
-----------|-------------
| Subject | Subject ID                       
| Activity | Performed Activity                           
| tBodyAcc-mean()-X | Mean time of the body's acceleration in the x-axis
| tBodyAcc-mean()-Y | Mean time of the body's acceleration in the y-axis            
| tBodyAcc-mean()-Z | Mean time of the body's acceleration in the z-axis             
| tBodyAcc-std()-X | Standard deviation of the time of the body's acceleration in the x-axis             
| tBodyAcc-std()-Y | Standard deviation of the time of the body's acceleration in the y-axis                   
| tBodyAcc-std()-Z | Standard deviation of the time of the body's acceleration in the z-axis             
| tGravityAcc-mean()-X | Mean time of the gravity's acceleration in the x-axis
| tGravityAcc-mean()-Y | Mean time of the gravity's acceleration in the y-axis
| tGravityAcc-mean()-Z | Mean time of the gravity's acceleration in the z-axis
| tGravityAcc-std()-X | Standard deviation of the time of the gravity's acceleration in the x-axis         
| tGravityAcc-std()-Y | Standard deviation of the time of the gravity's acceleration in the y-axis
| tGravityAcc-std()-Z | Standard deviation of the time of the gravity's acceleration in the z-axis          
| tBodyAccJerk-mean()-X | Mean time of body's jerk acceleration in the x-axis
| tBodyAccJerk-mean()-Y | Mean time of body's jerk acceleration in the y-axis        
| tBodyAccJerk-mean()-Z | Mean time of body's jerk acceleration in the z-axis
| tBodyAccJerk-std()-X | Standard deviation of the time of the body's jerk acceleration in the x-axis         
| tBodyAccJerk-std()-Y | Standard deviation of the time of the body's jerk acceleration in the y-axis          
| tBodyAccJerk-std()-Z | Standard deviation of the time of the body's jerk acceleration in the z-axis         
| tBodyGyro-mean()-X | Mean time of the body's gyroscope measurement in the x-axis
| tBodyGyro-mean()-Y | Mean time of the body's gyroscope measurement in the y-axis           
| tBodyGyro-mean()-Z | Mean time of the body's gyroscope measurement in the z-axis
| tBodyGyro-std()-X | Standard deviation of the time of the body's gyroscope measurment in the x-axis            
| tBodyGyro-std()-Y | Standard deviation of the time of the body's gyroscope measurment in the y-axis
| tBodyGyro-std()-Z | Standard deviation of the time of the body's gyroscope measurment in the z-axis            
| tBodyGyroJerk-mean()-X | Mean time of the body's jerk gyroscope measurement in the x-axis
| tBodyGyroJerk-mean()-Y | Mean time of the body's jerk gyroscope measurement in the y-axis       
| tBodyGyroJerk-mean()-Z | Mean time of the body's jerk gyroscope measurement in the z-axis
| tBodyGyroJerk-std()-X | Standard deviation of the time of the body's jerk gyroscope measurment in the x-axis        
| tBodyGyroJerk-std()-Y | Standard deviation of the time of the body's jerk gyroscope measurment in the y-axis
| tBodyGyroJerk-std()-Z | Standard deviation of the time of the body's jerk gyroscope measurment in the z-axis        
| tBodyAccMag-mean() | Mean time of the body's acceleration magnitude
| tBodyAccMag-std() | Standard deviation of the time of the body's acceleration magnitude
| tGravityAccMag-mean() | Mean time of the gravity's acceleration magnitude
| tGravityAccMag-std() | Standard deviation of the time of the gravity's acceleration magnitude         
| tBodyAccJerkMag-mean() | Mean time of the body's jerk acceleration magnitude 
| tBodyAccJerkMag-std() | Standard deviation of the time of the body's jerk acceleration magnitude         
| tBodyGyroMag-mean() | Mean time of the body's gyroscope measurement magnitude
| tBodyGyroMag-std() | Standard deviation of the time of the body's gyroscope measurement magnitude           
| tBodyGyroJerkMag-mean() | Mean time of the body's jerk gyroscope measurement magnitude
| tBodyGyroJerkMag-std() | Standard deviation of the time of the body's jerk gyroscope measuremant magnitude        
| fBodyAcc-mean()-X | Mean frequency of the body's acceleration in the x-axis
| fBodyAcc-mean()-Y | Mean frequency of the body's acceleration in the y-axis            
| fBodyAcc-mean()-Z | Mean frequency of the body's acceleration in the z-axis
| fBodyAcc-std()-X | Standard deviation of the frequency of the body's acceleration in the x-axis              
| fBodyAcc-std()-Y | Standard deviation of the frequency of the body's acceleration in the y-axis 
| fBodyAcc-std()-Z | Standard deviation of the frequency of the body's acceleration in the z-axis              
| fBodyAccJerk-mean()-X | Mean frequency of the body's jerk acceleration in the x-axis         
| fBodyAccJerk-mean()-Y | Mean frequency of the body's jerk acceleration in the y-axis 
| fBodyAccJerk-mean()-Z | Mean frequency of the body's jerk acceleration in the x-axis        
| fBodyAccJerk-std()-X | Standard deviation of the frequency of the body's jerk acceleration in the x-axis
| fBodyAccJerk-std()-Y | Standard deviation of the frequency of the body's jerk acceleration in the y-axis          
| fBodyAccJerk-std()-Z | Standard deviation of the frequency of the body's jerk acceleration in the z-axis
| fBodyGyro-mean()-X | Mean frequency of the body's gyroscope measurement in the x-axis
| fBodyGyro-mean()-Y | Mean frequency of the body's gyroscope measurement in the y-axis           
| fBodyGyro-mean()-Z | Mean frequency of the body's gyroscope measurement in the z-axis
| fBodyGyro-std()-X | Standard deviation of the frequency of the body's gyroscope measurement in the x-axis            
| fBodyGyro-std()-Y | Standard deviation of the frequency of the body's gyroscope measurement in the y-axis
| fBodyGyro-std()-Z | Standard deviation of the frequency of the body's gyroscope measurement in the z-axis           
| fBodyAccMag-mean() | Mean frequency of the body's acceleration magnitude           
| fBodyAccMag-std() | Standard deviation of the frequency's signal magnitude of the body's acceleration