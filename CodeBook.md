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
## Variable names in the tiday_Data, names were changes to be more descriptive
"Subject" "activity_ID" and "activity_Label" are ID columns. The rest variables are mean measurement of each subject on each activity and measurement.
 [1] "subject"                          
 [2] "activity_ID"                      
 [3] "activity_Label"                   
 [4] "timeBodyAccMean-X"                
 [5] "timeBodyAccMean-Y"                
 [6] "timeBodyAccMean-Z"                
 [7] "timeBodyAcc-std-X"                
 [8] "timeBodyAcc-std-Y"                
 [9] "timeBodyAcc-std-Z"                
[10] "timeGravityAccMean-X"             
[11] "timeGravityAccMean-Y"             
[12] "timeGravityAccMean-Z"             
[13] "timeGravityAcc-std-X"             
[14] "timeGravityAcc-std-Y"             
[15] "timeGravityAcc-std-Z"             
[16] "timeBodyAccJerkMean-X"            
[17] "timeBodyAccJerkMean-Y"            
[18] "timeBodyAccJerkMean-Z"            
[19] "timeBodyAccJerk-std-X"            
[20] "timeBodyAccJerk-std-Y"            
[21] "timeBodyAccJerk-std-Z"            
[22] "timeBodyGyroMean-X"               
[23] "timeBodyGyroMean-Y"               
[24] "timeBodyGyroMean-Z"               
[25] "timeBodyGyro-std-X"               
[26] "timeBodyGyro-std-Y"               
[27] "timeBodyGyro-std-Z"               
[28] "timeBodyGyroJerkMean-X"           
[29] "timeBodyGyroJerkMean-Y"           
[30] "timeBodyGyroJerkMean-Z"           
[31] "timeBodyGyroJerk-std-X"           
[32] "timeBodyGyroJerk-std-Y"           
[33] "timeBodyGyroJerk-std-Z"           
[34] "timeBodyAccMagnitudeMean"         
[35] "timeBodyAccMagnitudeSD"           
[36] "timeGravityAccMagnitudeMean"      
[37] "timeGravityAccMagnitudeSD"        
[38] "timeBodyAccJerkMagnitudeMean"     
[39] "timeBodyAccJerkMagnitudeSD"       
[40] "timeBodyGyroMagnitudeMean"        
[41] "timeBodyGyroMagnitudeSD"          
[42] "timeBodyGyroJerkMagnitudeMean"    
[43] "timeBodyGyroJerkMagnitudeSD"      
[44] "freqBodyAccMean-X"                
[45] "freqBodyAccMean-Y"                
[46] "freqBodyAccMean-Z"                
[47] "freqBodyAcc-std-X"                
[48] "freqBodyAcc-std-Y"                
[49] "freqBodyAcc-std-Z"                
[50] "freqBodyAccMeanFreq-X"            
[51] "freqBodyAccMeanFreq-Y"            
[52] "freqBodyAccMeanFreq-Z"            
[53] "freqBodyAccJerkMean-X"            
[54] "freqBodyAccJerkMean-Y"            
[55] "freqBodyAccJerkMean-Z"            
[56] "freqBodyAccJerk-std-X"            
[57] "freqBodyAccJerk-std-Y"            
[58] "freqBodyAccJerk-std-Z"            
[59] "freqBodyAccJerkMeanFreq-X"        
[60] "freqBodyAccJerkMeanFreq-Y"        
[61] "freqBodyAccJerkMeanFreq-Z"        
[62] "freqBodyGyroMean-X"               
[63] "freqBodyGyroMean-Y"               
[64] "freqBodyGyroMean-Z"               
[65] "freqBodyGyro-std-X"               
[66] "freqBodyGyro-std-Y"               
[67] "freqBodyGyro-std-Z"               
[68] "freqBodyGyroMeanFreq-X"           
[69] "freqBodyGyroMeanFreq-Y"           
[70] "freqBodyGyroMeanFreq-Z"           
[71] "freqBodyAccMagnitudeMean"         
[72] "freqBodyAccMagnitudeSD"           
[73] "freqBodyAccMagnitudeMeanFreq"     
[74] "freqBodyAccJerkMagnitudeMean"     
[75] "freqBodyAccJerkMagnitudeSD"       
[76] "freqBodyAccJerkMagnitudeMeanFreq" 
[77] "freqBodyGyroMagnitudeMean"        
[78] "freqBodyGyroMagnitudeSD"          
[79] "freqBodyGyroMagnitudeMeanFreq"    
[80] "freqBodyGyroJerkMagnitudeMean"    
[81] "freqBodyGyroJerkMagnitudeSD"      
[82] "freqBodyGyroJerkMagnitudeMeanFreq"

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

Rename the columns of new data to be more descriptive

Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
