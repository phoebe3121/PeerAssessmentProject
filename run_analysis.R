rm(list=ls())
setwd("/Users/yuanliu/Documents/coursera/getting_and_cleaning_data/UCI HAR Dataset")

## read the training data
    setwd("train")
    y_train <- read.table("y_train.txt",sep ="")
    x_train <- read.table("X_train.txt",sep ="")
    subject_train <- read.table("subject_train.txt",sep="")
## read the testing data
    setwd("..")
    setwd("test")
    y_test <- read.table("y_test.txt")
    x_test <- read.table("X_test.txt")
    subject_test <- read.table("subject_test.txt")

## read the labels of activity(y varible)
    setwd("..")
    activity_labels <- read.table("activity_labels.txt", stringsAsFactors =FALSE)
## read the features names
    features <- read.table("features.txt",stringsAsFactors =FALSE)
## extract the index of the features which are mean() or std()
    findmean <- grep("mean()",features[,2], fixed=TRUE)
    findstd <- grep("std()",features[,2],fixed=TRUE)
    ind <- sort(c(findmean, findstd))
    subfeatures <- features[ind,]
## keep only the mean() and std() features, and name them
    x_train <- x_train[,subfeatures[,1]]
    names(x_train) <- subfeatures[,2]
    x_test <- x_test[,subfeatures[,1]]
    names(x_test) <- subfeatures[,2]
## merge data 
    train <- cbind(subject_train, y_train, x_train)
    test <- cbind(subject_test,y_test,x_test)
    data <- rbind(train,test)
## name and label subject and activity
    names(data)[1:2] <- c("Subject","Activity")
    data[,"Activity"] <- factor(data$Activity, labels=activity_labels$V2)
## create a separate tidy data containing the mean of features for each subject and each activity
    tidydata <- aggregate(data[,3:68],by=list(Subject=data$Subject,Activity=data$Activity),mean)
    write.table(tidydata,file="tidydata.txt",row.names=FALSE,col.names=TRUE)
