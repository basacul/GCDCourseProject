## description of the data collected from the accelerometers from 
## the Samsung Galaxy S smartphone:
##   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#try to implement this function for reading the files
#      files_list <- list.files(directory, full.names = TRUE)
#      dat <- data.frame()
#      
#      for(i in id)
#      {
#            dat <- rbind(dat, read.csv(files_list[i]))
#      }
      


#data for the project
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
date_downloaded <- date()
download.file(url, destfile = "dataset.zip")
unzip("dataset.zip")

#1. Merges the training and the test sets to create one data set.
#features explains the columns of x_train and x_test
#and activity_labels the columns for y_train and y_test
features <- read.table("./UCI HAR Dataset/features.txt")
names(features) <- c("Variable", "Feature")
features <- as.character(features[,2])
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(activity_labels) <- c("Label", "Activity")

#Downloading test files without subdirectories as unnecessary
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

#column represents the activity_label from 1 to 6
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

#cbind plus add column indicating that it is a test subject with 1
test <- cbind(subject_test, rep(1, nrow(subject_test)), x_test, y_test)
names(test) <- c("Subject", "Train" , features , "Y_ActivityLabel")

#Now the same thing for train! - oh my god
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#add column Train with 0 equals train subject
subject_train <- cbind(subject_train, rep(0, nrow(subject_train)))

x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

#column represents activity_label from 1 to 6
y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")


train <- cbind(subject_train, x_train, y_train)
names(train) <- c("Subject", "Train" , features , "Y_ActivityLabel")

#second column needs to be renamed to Group: 0 = train , 1 = test
dataframe <- rbind(test,train)
rm("url","subject_test", "x_test", "y_test", "test", "subject_train", "x_train", "y_train", "train")

#2, Extracts only the measurements on the mean and standard deviation for each measurement. 

#3. Uses descriptive activity names to name the activities in the data set
#done in point 1 by naming the columns with the help of the features.txt for x and activity_lables.txt for y

#4. Appropriately labels the data set with descriptive variable names. 

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#   upload the tidy data set as .txt file created with write.table() using 
#   row.name = FALSE (do not cut and paste a dataset int the text box, as 
#   this may cause errors saving your submission)