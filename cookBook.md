
##cookBook
+ The parameters selected for this dataset came from the average of columns of the original raw data of 1-30 Subject in 6 types of Activity_Name(LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTRAIS). Note only the columns that was calculating mean() and std() were selected. Columns that are product of the average calculation of original mean() or std() columns are affixed a string of “MeanOf” in the beginning of the columns. More explanation about the naming convention can be found in the later part of the document or retrieved from UCI HAR Dataset website.



##Summary from original info document
+ Here’s some explanation of the column naming in the original features_info.txt in UCI HAR Dataset.

+ The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

+ Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

+ Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


## Feature list.
"Subject"                            
"Activity_Name"                      
"MeanOf-tBodyAcc-mean()-X"          
"MeanOf-tBodyAcc-mean()-Y"           
"MeanOf-tBodyAcc-mean()-Z"           
"MeanOf-tBodyAcc-std()-X"           
"MeanOf-tBodyAcc-std()-Y"            
"MeanOf-tBodyAcc-std()-Z"            
"MeanOf-tGravityAcc-mean()-X"       
"MeanOf-tGravityAcc-mean()-Y"        
"MeanOf-tGravityAcc-mean()-Z"        
"MeanOf-tGravityAcc-std()-X"        
"MeanOf-tGravityAcc-std()-Y"         
"MeanOf-tGravityAcc-std()-Z"         
"MeanOf-tBodyAccJerk-mean()-X"      
"MeanOf-tBodyAccJerk-mean()-Y"       
"MeanOf-tBodyAccJerk-mean()-Z"       
"MeanOf-tBodyAccJerk-std()-X"       
"MeanOf-tBodyAccJerk-std()-Y"        
"MeanOf-tBodyAccJerk-std()-Z"        
"MeanOf-tBodyGyro-mean()-X"         
"MeanOf-tBodyGyro-mean()-Y"          
"MeanOf-tBodyGyro-mean()-Z"          
"MeanOf-tBodyGyro-std()-X"          
"MeanOf-tBodyGyro-std()-Y"           
"MeanOf-tBodyGyro-std()-Z"           
"MeanOf-tBodyGyroJerk-mean()-X"     
"MeanOf-tBodyGyroJerk-mean()-Y"      
"MeanOf-tBodyGyroJerk-mean()-Z"      
"MeanOf-tBodyGyroJerk-std()-X"      
"MeanOf-tBodyGyroJerk-std()-Y"       
"MeanOf-tBodyGyroJerk-std()-Z"       
"MeanOf-tBodyAccMag-mean()"         
"MeanOf-tBodyAccMag-std()"           
"MeanOf-tGravityAccMag-mean()"       
"MeanOf-tGravityAccMag-std()"       
"MeanOf-tBodyAccJerkMag-mean()"      
"MeanOf-tBodyAccJerkMag-std()"       
"MeanOf-tBodyGyroMag-mean()"        
"MeanOf-tBodyGyroMag-std()"          
"MeanOf-tBodyGyroJerkMag-mean()"     
"MeanOf-tBodyGyroJerkMag-std()"     
"MeanOf-fBodyAcc-mean()-X"           
"MeanOf-fBodyAcc-mean()-Y"           
"MeanOf-fBodyAcc-mean()-Z"          
"MeanOf-fBodyAcc-std()-X"            
"MeanOf-fBodyAcc-std()-Y"            
"MeanOf-fBodyAcc-std()-Z"           
"MeanOf-fBodyAccJerk-mean()-X"       
"MeanOf-fBodyAccJerk-mean()-Y"       
"MeanOf-fBodyAccJerk-mean()-Z"      
"MeanOf-fBodyAccJerk-std()-X"        
"MeanOf-fBodyAccJerk-std()-Y"        
"MeanOf-fBodyAccJerk-std()-Z"       
"MeanOf-fBodyGyro-mean()-X"          
"MeanOf-fBodyGyro-mean()-Y"          
"MeanOf-fBodyGyro-mean()-Z"         
"MeanOf-fBodyGyro-std()-X"           
"MeanOf-fBodyGyro-std()-Y"           
"MeanOf-fBodyGyro-std()-Z"          
"MeanOf-fBodyAccMag-mean()"          
"MeanOf-fBodyAccMag-std()"           
"MeanOf-fBodyBodyAccJerkMag-mean()" 
"MeanOf-fBodyBodyAccJerkMag-std()"   
"MeanOf-fBodyBodyGyroMag-mean()"     
"MeanOf-fBodyBodyGyroMag-std()"     
"MeanOf-fBodyBodyGyroJerkMag-mean()" 
"MeanOf-fBodyBodyGyroJerkMag-std()" 


##The set of variables that were estimated from these signals are: 
+ mean(): Mean value
+ std(): Standard deviation
