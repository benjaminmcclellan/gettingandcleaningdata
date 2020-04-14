library(dplyr)
library(tidyselect)
## extract files from internet and then unzip files into a local directory
         if (!dir.exists("data")){
                dir.create("data")
        }
        if (!file.exists("./data/run.zip")){
                download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "./data/run.zip")
        } 
        
        if (!file.exists("./data/UCI HAR Dataset")){
                unzip("./data/run.zip", exdir = "./data")
        } 

##load the data into a data frame with activity and subject columns 
        features<- read.table("./data/UCI HAR Dataset/features.txt")
        columnnam <- as.character(features[,2])
        acttrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt", row.names = NULL)
        subtrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", row.names = NULL)
        acttest <- read.table("./data/UCI HAR Dataset/test/y_test.txt", row.names = NULL)
        subtest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", row.names = NULL)
        train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names = columnnam)
        test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names = columnnam)
        train$activity_number <- unlist(acttrain)
        train$subject <- unlist(subtrain)
        test$activity_number <- unlist(acttest)
        test$subject <- unlist(subtest)
        
## merge the two data frames
        rowtrain<- 1:7352
        rowtest <- 7353:10299
        rownames(train) <- rowtrain
        rownames(test) <- rowtest
        all_data <- rbind(train, test)

##extract columns for mean and standard deviation values
        extnam <- c("mean()", "std()")
        ext_data <- select(all_data, matches(extnam), contains("subject"), contains("activity"))
        
##assign character activity levels to numbered activities, bring subject ids and activity labels to front of dataset
        actnames <- c("walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying")
        activity_name <- actnames[ext_data$activity_number]
        ext_data$activity_name<- unlist(activity_name)
        ext_data2 <- ext_data[,c(87:89, 1:86)]
        
##create new data frame with average of each variable for groupings of subjects and activities
        sort_data <- group_by(ext_data2, subject, activity_name)
        tidydata <- summarize_all(sort_data, mean, na.rm = TRUE)
        