## description of the data collected from the accelerometers from 
## the Samsung Galaxy S smartphone:
##   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#data for the project: hardcoded and each file will be downloaded separately after unzipping
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
date_downloaded <- date()
download.file(url, destfile = "dataset.zip")
unzip("dataset.zip")

##################################################################################################
#1. Merges the training and the test sets to create one data set.
#features represent the column variables of both x_* files,
#activity_labels is a reference for the y_* files
##################################################################################################

features <-             read.table("./UCI HAR Dataset/features.txt", 
                        stringsAsFactors = FALSE)
activity_labels <-      read.table("./UCI HAR Dataset/activity_labels.txt", 
                        stringsAsFactors = FALSE)
subject_test <-         read.table("./UCI HAR Dataset/test/subject_test.txt", 
                        stringsAsFactors = FALSE)
x_test <-               read.table("./UCI HAR Dataset/test/X_test.txt", 
                        stringsAsFactors = FALSE)

#column represents the activity_label from 1 to 6
y_test <-               read.table("./UCI HAR Dataset/test/y_test.txt", 
                        stringsAsFactors = FALSE)

#cbind plus add column indicating that it is a test subject with 0
test <-                 cbind(subject_test, 
                        rep(0, nrow(subject_test)), y_test, 
                        x_test)


#Now the same thing for train!
subject_train <-        read.table("./UCI HAR Dataset/train/subject_train.txt", 
                        stringsAsFactors = FALSE)

#add column Group with 0 equals subject is from train group
subject_train <-        cbind(subject_train, rep(1, nrow(subject_train)))
x_train <-              read.table("./UCI HAR Dataset/train/X_train.txt", 
                        stringsAsFactors = FALSE)

#column represents activity_label from 1 to 6
y_train <-              read.table("./UCI HAR Dataset/train/Y_train.txt", 
                        stringsAsFactors = FALSE)
train <-                cbind(subject_train, y_train,x_train )


###################################################################################################            
#4. Appropriately labels the data set with descriptive variable names. 
#done as second step
###################################################################################################

colnames(test) <-  c("Subject", "Group" , "Activity", features[,2])
colnames(train) <- c("Subject", "Group" , "Activity", features[,2])

dataframe <- rbind(test,train)


#remove variables in the working environment to free some memory space
rm("url","subject_test", "x_test", "y_test", 
   "test", "subject_train", "x_train", "y_train", 
   "activity_labels", "features", "train")

###################################################################################################
#2, Extracts only the measurements on the mean and standard deviation for each measurement
# as well as subject and activity column
###################################################################################################

subset <- cbind(dataframe[,c(1,3)], dataframe[,grepl("mean", colnames(dataframe)) | grepl("std", colnames(dataframe))])

###################################################################################################
#3. Uses descriptive activity names to name the activities in the data set
#this is done with as simple for loop - brute force coding
###################################################################################################

l <- nrow(subset)

for (i in 1:l)
{
      if( subset[i,2] == 1){
            subset[i,2] <- "walking"
      }else if(subset[i,2] == 2){
            subset[i,2] <- "walking_upstairs"
      }else if(subset[i,2] == 3){
            subset[i,2] <- "walking_downstairs"
      }else if(subset[i,2] == 4){
            subset[i,2] <- "sitting"
      }else if(subset[i,2] == 5){
            subset[i,2] <- "standing"
      }else if(subset[i,2] == 6){
            subset[i,2] <- "laying"
      }else{
            subset[i,3] <- NA
      }
}


###################################################################################################
#5. From the data set in step above, creates a second, independent tidy data set with 
#the average of each variable for each activity  and each subject.
###################################################################################################

tidy_data <- ddply(subset, .(Subject, Activity), numcolwise(mean))

#column variables not clearly specified in the features help file are excluded from the tidy
#data set like ..BodyBody.. variable names as well as  ..MeanFreq.. variable names
tidy_data <- tidy_data[,!(grepl("BodyBody", colnames(tidy_data)) | grepl("meanFreq", colnames(tidy_data)))]

#saving the tidy data set as .txt file created with write.table() using 
#row.name = FALSE 
write.table(tidy_data, file = "tidydata.txt", row.names = FALSE)