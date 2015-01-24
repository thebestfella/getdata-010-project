#------------------------------------------------------------------
# @author:  Peter Wang
# @date:    Jan, 23, 2015
# @file:    run_analysis.R
# @desc:    
#------------------------------------------------------------------

library(stringr)

#------------  step1  ------------ 
#Merges the training and the test sets to create one data set.

#read all test data in train
train_x<-read.table("./UCI HAR Dataset/train/x_train.txt")
train_y<-read.table("./UCI HAR Dataset/train/y_train.txt")
train_subject<-read.table("./UCI HAR Dataset/train/subject_train.txt")

#read all train data in test
test_x<-read.table("./UCI HAR Dataset/test/x_test.txt")
test_y<-read.table("./UCI HAR Dataset/test/y_test.txt")
test_subject<-read.table("./UCI HAR Dataset/test/subject_test.txt")

#rbind train_x and test_x to dataset, 
#then remove them from memory
dataset<-rbind(train_x,test_x)
rm(test_x)
rm(train_x)



#------------  step2  ------------ 
#Extracts only the measurements on the mean and standard 
#deviation for each measurement. 

#read features
features<-read.table("./UCI HAR Dataset/features.txt")
names(dataset)<-features[,2]

#generate a list of data that contains "mean", "std"
#but exclude "meanFreq"
f_list<-features[grep("std()|mean()", features$V2),]
f_list<-f_list[!grepl("meanFreq()", f_list$V2),]

#remove unneeded column from dataset
f_list <- names(dataset) %in% f_list[,2]
dataset <- dataset[f_list]

#clean up
rm(features)



#------------  step3 & step4 ------------
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 

#read activity_labels
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")

#bind y and subject in both train and test 
y_list<-rbind(train_y,test_y)
subject_list<-rbind(train_subject,test_subject)

#name the columns
names(subject_list)<-"Subject"
names(y_list)<-"Act.ID"

#convert y_list to activities in string
y_list$Activity_Name <- activity_labels$V2[match(y_list$Act.ID, activity_labels$V1)]

#bind subject list and activity list with dataset
dataset<-cbind(y_list[,2],dataset)
colnames(dataset)[1] <- "Activity_Name"
dataset<-cbind(subject_list[,],dataset)
colnames(dataset)[1] <- "Subject"

#clean up 
rm(train_y)
rm(train_subject)
rm(test_y)
rm(test_subject)
rm(activity_labels)
rm(subject_list)
rm(y_list)



#------------  step5  ------------
#From the data set in step 4, creates a second, independent tidy 
#data set with the average of each variable for each activity and 
#each subject.

#summarize data to a tidy dataset
tidyDataSet <- aggregate(dataset[names(dataset)[-1:-2]], 
                         by = dataset[c("Activity_Name","Subject")], FUN=mean)

#modify the column names because of the mean operation
names(tidyDataSet)[-1:-2]<-str_c( "MeanOf-", names(tidyDataSet)[-1:-2] )

#sort row order by column "Subject" then "Activity_Name"
tidyDataSet<-tidyDataSet[,c(2,1,3:68)]

#output tidy dataset to "output.txt"
write.table(tidyDataSet,file="tidyDataOutput.txt",row.names=FALSE)

#cleaning
rm(dataset)
rm(tidyDataSet)

