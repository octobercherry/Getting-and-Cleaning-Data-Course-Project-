## In the main dir, there are four files: activity_labels.txt; features_info.txt; features.txt; README.txt

activity_labels.txt  : Numerical tags for each type of activity that the subjects performed. Six total.

features_info.txt :  Description of the measurements made while each subject performed each activity. 

                    1 WALKING
                    
                    2 WALKING_UPSTAIRS
                    
                    3 WALKING_DOWNSTAIRS
                    
                    4 SITTING
                    
                    5 STANDING
                    
                    6 LAYING
                    
features.txt : A listing of each type of measurement made with descriptive names. 561 total. Each subject                          performing one of the six activities will generate 561 measurements.
## In test directory data files
Subject_test.txt : Single column of numerical ids for a random subset of the 30 subjects performing tests. 

X_test.txt :Table of measurements (features)  2497 lines each line has 561 columns of measurements. 

y_test.txt : Single column list of activities performed for each of the rows in X_test.txt identified by                numerical values 1-6.

## In train directory data files
subject_train.txt : Single column of numerical ids for a random subset of the 30 subjects performing tests.

X_train.txt : Table of measurements (features) 7352 lines each line has 561 columns of                                 measurements 21 subjects total.

y_train.txt : Single column list of activities performed for each of the rows in X_train.txt identified by              numerical values 1-6.
## Variable names in the tiday_Data
"subject" 
"activity_ID"
"activity_Label"
"tBodyAcc-mean()-X"
"tBodyAcc-mean()-Y"           
"tBodyAcc-mean()-Z"          
"tBodyAcc-std()-X"            
"tBodyAcc-std()-Y"           
"tBodyAcc-std()-Z"            
"tGravityAcc-mean()-X"       
"tGravityAcc-mean()-Y"        
"tGravityAcc-mean()-Z"       
"tGravityAcc-std()-X"         
"tGravityAcc-std()-Y"        
"tGravityAcc-std()-Z"         
"tBodyAccJerk-mean()-X"      
"tBodyAccJerk-mean()-Y"       
"tBodyAccJerk-mean()-Z"      
"tBodyAccJerk-std()-X"        
"tBodyAccJerk-std()-Y"       
"tBodyAccJerk-std()-Z"        
"tBodyGyro-mean()-X"         
"tBodyGyro-mean()-Y"          
"tBodyGyro-mean()-Z"         
"tBodyGyro-std()-X"           
"tBodyGyro-std()-Y"          
"tBodyGyro-std()-Z"           
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y"      
"tBodyGyroJerk-mean()-Z"     
"tBodyGyroJerk-std()-X"       
"tBodyGyroJerk-std()-Y"      
"tBodyGyroJerk-std()-Z"       
"tBodyAccMag-mean()"         
"tBodyAccMag-std()"           
"tGravityAccMag-mean()"      
"tGravityAccMag-std()"        
"tBodyAccJerkMag-mean()"     
"tBodyAccJerkMag-std()"       
"tBodyGyroMag-mean()"        
"tBodyGyroMag-std()"          
"tBodyGyroJerkMag-mean()"    
"tBodyGyroJerkMag-std()"      
"fBodyAcc-mean()-X"          
"fBodyAcc-mean()-Y"           
"fBodyAcc-mean()-Z"          
"fBodyAcc-std()-X"            
"fBodyAcc-std()-Y"           
"fBodyAcc-std()-Z"            
"fBodyAccJerk-mean()-X"      
"fBodyAccJerk-mean()-Y"       
"fBodyAccJerk-mean()-Z"      
"fBodyAccJerk-std()-X"        
"fBodyAccJerk-std()-Y"       
"fBodyAccJerk-std()-Z"        
"fBodyGyro-mean()-X"         
"fBodyGyro-mean()-Y"          
"fBodyGyro-mean()-Z"         
"fBodyGyro-std()-X"           
"fBodyGyro-std()-Y"          
"fBodyGyro-std()-Z"           
"fBodyAccMag-mean()"         
"fBodyAccMag-std()"           
"fBodyBodyAccJerkMag-mean()" 
"fBodyBodyAccJerkMag-std()"   
"fBodyBodyGyroMag-mean()"    
"fBodyBodyGyroMag-std()"      
"fBodyBodyGyroJerkMag-mean()"
"fBodyBodyGyroJerkMag-std()"
##The script run_analysis.R performs the following steps:
Load data from main directory.

Load data from test files

Select only mean and standard deviation measurement

Name test files

Merges columns of test files

Load data from train files

Select only mean and standard deviation measurement

Name train files

Merge columns of train files

Merge rows of test and train files

Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
