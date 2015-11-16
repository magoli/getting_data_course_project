# ## set the working directory.
# setwd("C:/!MANUALS/R/Coursera/Getting and cleaning data")
# 
# ## download and unzip the data into the working directory.
# 
# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","Dataset.zip")
# unzip("Dataset.zip")
# list.files()

## read test data sets. 

setwd("./UCI HAR Dataset/test")

list.files()

varlist<-c(1:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266:271, 345:350, 424:429, 503, 504, 516, 517, 529, 530, 542, 543)

x_test <- read.csv("X_test.txt",sep="",header=F)
y_test <- read.csv("y_test.txt",sep="",header=F)
subject_test <- read.csv("subject_test.txt",sep="",header=F)
x_test <- x_test[,varlist]

## read train data sets. 

setwd("../train")

list.files()

x_train <- read.csv("X_train.txt",sep="",header=F)
y_train <- read.csv("y_train.txt",sep="",header=F)
subject_train <- read.csv("subject_train.txt",sep="",header=F)
x_train<- x_train [,varlist]

## merge test and train datasets.
setwd("../")
x<-rbind(x_test,x_train)
y<-rbind(y_test,y_train)
subject<-rbind(subject_test,subject_train)

## merge everything into one dataset.
db<-cbind(subject,y,x)

## rename variables.

names(db) <- c("Subject", "Act_label","tBodyAcc_mean_X",
               "tBodyAcc_mean_Y",
               "tBodyAcc_mean_Z",
               "tBodyAcc_std_X",
               "tBodyAcc_std_Y",
               "tBodyAcc_std_Z",
               "tGravityAcc_mean_X",
               "tGravityAcc_mean_Y",
               "tGravityAcc_mean_Z",
               "tGravityAcc_std_X",
               "tGravityAcc_std_Y",
               "tGravityAcc_std_Z",
               "tBodyAccJerk_mean_X",
               "tBodyAccJerk_mean_Y",
               "tBodyAccJerk_mean_Z",
               "tBodyAccJerk_std_X",
               "tBodyAccJerk_std_Y",
               "tBodyAccJerk_std_Z",
               "tBodyGyro_mean_X",
               "tBodyGyro_mean_Y",
               "tBodyGyro_mean_Z",
               "tBodyGyro_std_X",
               "tBodyGyro_std_Y",
               "tBodyGyro_std_Z",
               "tBodyGyroJerk_mean_X",
               "tBodyGyroJerk_mean_Y",
               "tBodyGyroJerk_mean_Z",
               "tBodyGyroJerk_std_X",
               "tBodyGyroJerk_std_Y",
               "tBodyGyroJerk_std_Z",
               "tBodyAccMag_mean",
               "tBodyAccMag_std",
               "tGravityAccMag_mean",
               "tGravityAccMag_std",
               "tBodyAccJerkMag_mean",
               "tBodyAccJerkMag_std",
               "tBodyGyroMag_mean",
               "tBodyGyroMag_std",
               "tBodyGyroJerkMag_mean",
               "tBodyGyroJerkMag_std",
               "fBodyAcc_mean_X",
               "fBodyAcc_mean_Y",
               "fBodyAcc_mean_Z",
               "fBodyAcc_std_X",
               "fBodyAcc_std_Y",
               "fBodyAcc_std_Z",
               "fBodyAccJerk_mean_X",
               "fBodyAccJerk_mean_Y",
               "fBodyAccJerk_mean_Z",
               "fBodyAccJerk_std_X",
               "fBodyAccJerk_std_Y",
               "fBodyAccJerk_std_Z",
               "fBodyGyro_mean_X",
               "fBodyGyro_mean_Y",
               "fBodyGyro_mean_Z",
               "fBodyGyro_std_X",
               "fBodyGyro_std_Y",
               "fBodyGyro_std_Z",
               "fBodyAccMag_mean",
               "fBodyAccMag_std",
               "fBodyBodyAccJerkMag_mean",
               "fBodyBodyAccJerkMag_std",
               "fBodyBodyGyroMag_mean",
               "fBodyBodyGyroMag_std",
               "fBodyBodyGyroJerkMag_mean",
               "fBodyBodyGyroJerkMag_std")

## Add labels to activilies.

db$Act_label<-factor(db$Act_label,levels=c(1:6),
       labels=c("WALKING",
                "WALKING_UPSTAIRS",
                "WALKING_DOWNSTAIRS",
                "SITTING",
                "STANDING",
                "LAYING"))

##aggregate the data to get the average measurements for each subject and activity.
db_new <- aggregate(db[,3:68],list(Activity_label=db$Act_label,Subject=db$Subject),mean)

## write to the database.
write.table(db_new,file='Human_activity_recognition_tidy.txt',row.name=F)

