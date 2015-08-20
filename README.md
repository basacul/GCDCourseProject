# GCDCourseProject

##GDCCourseProject repository
-------------------------------
This repository consists of the followin files:

1. ReadME.md 
      This file explains how all of the scripts work and 
      how they are connected

2. CodeBook.md
      This file describes the source of the data, the processing 
      of the data, and especially the variables of the output of run the            
      tidy_data.txt file. 

3. run_analysis.R
      This script allows to download the data from an experiment, where
      30 participants concluded 6 different activites measured with
      a Samsung Galaxy SII smartphone and process the data to a
      text file tidy_data.txt

4. GCDCourseProject.Rproj (REDUNDANT)
      File that is internally used in my RStudio application to
      work on this project
      
5. .RData (Redundant)
      File that is internally used in my RStudio application to
      work on this project

6. .gitignore (REDUNDANT)
      As the name suggests: ignore it. It's just a git file internally
      used on my workstation


##How this works
------------------

The file run_analysis.R is a script which implements the following tasks: 

1.Downloads the UCI HAR Dataset dataset from 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smar      tphones

2.Regroups the measurments of the test group and train group together into one      data set. 

3.Renames the variables as described in the features.txt file of the dataset in
  order to understand what each variable represents

4.Creates a new data set with the mean time or frequency as well as all standard
  deviations. The other variables not satisfying this condition will not be  
  included in the reduced data set.

5.Renames the activity labels from a numeric value to one of the six activities  
  done by the subject (walking, walking upstairs, walking downstairs, sitting, 
  standing or laying)
  
6.Creates a tidy data set with the mean value for each variable according to the 
  subject and activity, such that a 180 rows X 88 columns data set is created

7.Saves the tidy data set as a text file named tidy_data.txt
