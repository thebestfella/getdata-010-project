
##Human Activity Recognition Using Smartphones - Tidy Dataset
+ Version 1.0 Jan.24.2015

##Original Authors of raw data:
+ Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

##Tidy Dataset produced by:
+ Peter Wang.




## Files
+ Tidy data set contains data from the following files of original UCI HAR Dataset, please check its official site for more info about how the raw data was captured or contact activityrecognition@smartlab.ws

+ 'features_info.txt': Shows info about the variables on feature vector.

+ 'features.txt': List of all features.

+ 'activity_labels.txt': Links the class labels with their activity name.

+ 'train/X_train.txt': Training set.

+ 'train/y_train.txt': Training labels.

+ 'test/X_test.txt': Test set.

+ 'test/y_test.txt': Test labels.


## How to read tidy data set

+ data <- read.table("tidyDataOutput.txt", header = TRUE) 



## How the tidy dataset is processed

+ The processes are roughly broken into the following 5 steps.

### step 1 - Merges the training and the test sets to create one data set.

+ "x_train.txt", "y_train.txt", "subject_train.txt" from train subfolder and "x_test.txt", "x_train.txt", "subject_test.txt" from test subfolder are read to indivisual dataframes.

+ A rbind method is called to bind x_train and x_test together vertically to a singal dataset.

+ x_train and x_test are removed from memory scope.

### step 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 

+ "features.txt" which contains the features of each column data is read to the memory. 

+ Add column names to the dataset.

+ Create a list the column names that contain "mean" and "std", then remove column names that contain "meanFreq" because that's not needed.

+ Remove columns from dataset that are not in the list mentioned in the previous step.

+ Remove features list from memory scope.

### step 3 & step 4 - Uses descriptive activity names to name the activities in the data set and appropriately labels the data set with descriptive variable names.

+ Read "activity_labels.txt" from dir to get the corresbonding activity number in labels.

+ Bind activity from train and test vertically with cbind.

+ Bind subject from train and test vertically with cbind.  

+ Change name of correct column in subject list to "Subject".

+ Change name of correct column in activity list to "Act.ID".

+ Convert number in activity list to name labels by matching "Act.ID" with table from activity_labels.

+ Bind activity in labels and subject number with dataset from step 2 together by using rbind. 

+ Change the first two column name of dataset to "Subject" and "Activity_Name".

+ Remove subject_train, y_train, subject_test, y_test, acticity_labels, subect_list from current memory scope.

### step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

+ Summarize the dataset into a tidyDataSet by melting and calculating in group of mean of each column (each first two column.)

+ Rename each columns by affixing "MeanOf-" to the front of the column name strings.

+ Sort the column order of tidyDataSet to make "Subject" go front of "Activity_Name".

+ Save the tidy dataset to "tidyDatOutput.txt" and remove rownames.

+ Remove dataset and tidyDataSet from current memory scope.




##License:

+ Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

+ [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

+ This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

+ Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
