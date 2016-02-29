## In the main dir, there are four files: activity_labels.txt features_info.txt features.txt README.txt
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
Subject_test.txt : Single column of numerical ids for a random subset of the 30 subjects performing tests                  
X_test.txt :Table of measurements (features)  2497 lines each line has 561 columns of measurements 
y_test.txt : Single column list of activities performed for each of the rows in X_test.txt identified by                numerical values 1-6.
## In train directory data files
subject_train.txt : Single column of numerical ids for a random subset of the 30 subjects performing tests
X_train.txt : Table of measurements (features) 7352 lines each line has 561 columns of                                 measurements 21 subjects total
y_train.txt : Single column list of activities performed for each of the rows in X_train.txt identified by              numerical values 1-6.
