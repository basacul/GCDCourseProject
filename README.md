# GCDCourseProject

##GDCCourseProject repository
-------------------------------

This repository consists of the following files:

1. README.md : This file explains how all of the scripts work and how they are connected

2. CodeBook.md : This file describes the source of the data set, the processing of the data, and especially the variables of the tidydata text file which represents a data set created with run_analysis.R. 

3. run_analysis.R : This script allows to download the data set from an experiment, where 30 participants concluded 6 different activites measured with a Samsung Galaxy SII smartphone. The script creates a new tidy data set saved as a text file tidydata.txt

4. tidydata : A .txt file consisting of the tidy data set created with run_analysis.R as output with 180 rows and 62 columns. The columns variables are described in the CodeBook.md and only variables names measuring the mean or standard deviation that are clearly specified in the features info text file were included. The features info text file is included in the downloaded data set.

##How this works
------------------

The file run_analysis.R is a script which implements the following tasks: 

1.Downloads the UCI HAR Dataset dataset from 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

2.Regroups the measurments of the test group and train group together into one data set. 

3.Renames the variables as described in the features.txt file of the dataset in order to understand what each variable represents

4.Creates a new data set with the mean time or frequency as well as all standard deviations. The other variables not satisfying this condition will not be included in the reduced data set.

5.Renames the activity labels from a numeric value to a character sting of the six activities which were all done by each subject (walking, walking upstairs, walking downstairs, sitting, standing or laying). 
  
6.Creates a tidy data set with the mean value for each variable according to the subject and activity, such that a 180 rows X 62 columns data set is created. It consists of variable names that measure the mean or the standard deviation and moreover are clearly specified in the features info text file provided by the downloaded data set.

7.Saves the tidy data set as a text file named tidydata.txt
