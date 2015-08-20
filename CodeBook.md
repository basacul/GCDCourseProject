# CodeBook
====================================================================================
This codebook describes the source of the data, the processing of the data,
and especially the variables of the output of run the tidy_data.txt file.

## 1. Data Source
-------------------

Downloaded source:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The dataset from the link above carries the data collected from the accelerometers from 
the Samsung Galaxy S smartphone during an experiment carried out with a group of
30 volunteers within an age bracket of 19 - 48 years. Six activities were performed
(walking, walking upstairs, walking downstairs, sitting, standing and laying) wearing
a Samsung Galaxy S II on the waist.

In the ReadME.txt file of the downloaded dataset you can find further information 
about what is provided for each record as well as which files the dataset from the 
source url includes.

## 2. Transformation of the data
----------------------------------

1. Merging of the training and test sets into one data set without considering its
   subfolders (which can be found in each test and train directory)
2. Naming of the variable names in the data set as found in the features.txt file 
   of the source dataset 
3. Extraction of all variable names containing 'mean' or 'std'
4. Appropriate labeling of the activities with one of the six activities mentioned  
   above 
5. Calculation of the mean for each subject and activity and creation of a new
   tidy data set called tidy_data.txt
   
## 3. Variable Descriptions
-----------------------------
| Variable | Description
-----------|-------------
| Subject |                           
| Activity |                           
| tBodyAcc.mean...X |                   
| tBodyAcc.mean...Y |                 
| tBodyAcc.mean...Z |                  
| tGravityAcc.mean...X |               
| tGravityAcc.mean...Y |               
| tGravityAcc.mean...Z |              
| tBodyAccJerk.mean...X |        
| tBodyAccJerk.mean...Y |              
| tBodyAccJerk.mean...Z |              
| tBodyGyro.mean...X |             
| tBodyGyro.mean...Y |                 
| tBodyGyro.mean...Z |                 
| tBodyGyroJerk.mean...X |              
| tBodyGyroJerk.mean...Y |             
| tBodyGyroJerk.mean...Z |             
| tBodyAccMag.mean.. |                  
| tGravityAccMag.mean.. |              
| tBodyAccJerkMag.mean.. |             
| tBodyGyroMag.mean.. |                 
| tBodyGyroJerkMag.mean.. |             
| fBodyAcc.mean...X |                   
| fBodyAcc.mean...Y |                  
| fBodyAcc.mean...Z |                  
| fBodyAcc.meanFreq...X |              
| fBodyAcc.meanFreq...Y |              
| fBodyAcc.meanFreq...Z |              
| fBodyAccJerk.mean...X |              
| fBodyAccJerk.mean...Y |              
| fBodyAccJerk.mean...Z |              
| fBodyAccJerk.meanFreq...X |          
| fBodyAccJerk.meanFreq...Y |          
| fBodyAccJerk.meanFreq...Z |          
| fBodyGyro.mean...X |                  
| fBodyGyro.mean...Y |                 
| fBodyGyro.mean...Z |                 
| fBodyGyro.meanFreq...X |              
| fBodyGyro.meanFreq...Y |             
| fBodyGyro.meanFreq...Z |             
| fBodyAccMag.mean.. |                
| fBodyAccMag.meanFreq.. |              
| fBodyBodyAccJerkMag.mean.. |         
| fBodyBodyAccJerkMag.meanFreq.. |      
| fBodyBodyGyroMag.mean.. |             
| fBodyBodyGyroMag.meanFreq.. |         
| fBodyBodyGyroJerkMag.mean.. |        
| fBodyBodyGyroJerkMag.meanFreq.. |     
| angle.tBodyAccMean.gravity. |         
| angle.tBodyAccJerkMean..gravityMean. |
| angle.tBodyGyroMean.gravityMean. |    
| angle.tBodyGyroJerkMean.gravityMean. |
| angle.X.gravityMean. |               
| angle.Y.gravityMean. |               
| angle.Z.gravityMean. |                
| tBodyAcc.std...X |                   
| tBodyAcc.std...Y |                   
| tBodyAcc.std...Z |                    
| tGravityAcc.std...X |                
| tGravityAcc.std...Y |                
| tGravityAcc.std...Z |                
| tBodyAccJerk.std...X |               
| tBodyAccJerk.std...Y |               
| tBodyAccJerk.std...Z |               
| tBodyGyro.std...X |                  
| tBodyGyro.std...Y |                  
| tBodyGyro.std...Z |                  
| tBodyGyroJerk.std...X |              
| tBodyGyroJerk.std...Y |              
| tBodyGyroJerk.std...Z |               
| tBodyAccMag.std.. |                   
| tGravityAccMag.std.. |                
| tBodyAccJerkMag.std.. |               
| tBodyGyroMag.std.. |                  
| tBodyGyroJerkMag.std.. |        
| fBodyAcc.std...X |                   
| fBodyAcc.std...Y |                   
| fBodyAcc.std...Z |                    
| fBodyAccJerk.std...X |               
| fBodyAccJerk.std...Y |               
| fBodyAccJerk.std...Z |                
| fBodyGyro.std...X |                  
| fBodyGyro.std...Y |                  
| fBodyGyro.std...Z |                  
| fBodyAccMag.std.. |                   
| fBodyBodyAccJerkMag.std.. |           
| fBodyBodyGyroMag.std.. |              
| fBodyBodyGyroJerkMag.std.. |
