## Project Description
Course Project in "Getting and Cleaning Data" Course in Cousera.

## Tidy Dataset
The original dataset was composed of several files (see below) which were merged and modified in order to be more readable. The final dataset obeys three principles outlined by Wickham (sd):

1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

The script used to generate the tidy data can be found in run_analysis.R in this repo. Instructions on how to run it are in the Codebook also provided here in this repo.

The tidy dataset comprises averages for 79 variables that had mean and standard deviations values, as the exercise requested, grouped by subject and activity. The final list of variables included in the dataset are:

  [1] "subject"                                         
  [2] "activity"                                        
  [3] "tBodyAcceleration.mean...X"                      
  [4] "tBodyAcceleration.mean...Y"                      
  [5] "tBodyAcceleration.mean...Z"                      
  [6] "tGravityAcceleration.mean...X"                   
  [7] "tGravityAcceleration.mean...Y"                   
  [8] "tGravityAcceleration.mean...Z"                   
  [9] "tBodyAccelerationJerk.mean...X"                  
 [10] "tBodyAccelerationJerk.mean...Y"                  
 [11] "tBodyAccelerationJerk.mean...Z"                  
 [12] "tBodyAngularVelocity.mean...X"                   
 [13] "tBodyAngularVelocity.mean...Y"                   
 [14] "tBodyAngularVelocity.mean...Z"                   
 [15] "tBodyAngularVelocityJerk.mean...X"               
 [16] "tBodyAngularVelocityJerk.mean...Y"               
 [17] "tBodyAngularVelocityJerk.mean...Z"               
 [18] "tBodyAccelerationMagnitude.mean.."               
 [19] "tGravityAccelerationMagnitude.mean.."            
 [20] "tBodyAccelerationJerkMagnitude.mean.."           
 [21] "tBodyAngularVelocityMagnitude.mean.."            
 [22] "tBodyAngularVelocityJerkMagnitude.mean.."        
 [23] "fBodyAcceleration.mean...X"                      
 [24] "fBodyAcceleration.mean...Y"                      
 [25] "fBodyAcceleration.mean...Z"                      
 [26] "fBodyAcceleration.meanFreq...X"                  
 [27] "fBodyAcceleration.meanFreq...Y"                  
 [28] "fBodyAcceleration.meanFreq...Z"                  
 [29] "fBodyAccelerationJerk.mean...X"                  
 [30] "fBodyAccelerationJerk.mean...Y"                  
 [31] "fBodyAccelerationJerk.mean...Z"                  
 [32] "fBodyAccelerationJerk.meanFreq...X"              
 [33] "fBodyAccelerationJerk.meanFreq...Y"              
 [34] "fBodyAccelerationJerk.meanFreq...Z"              
 [35] "fBodyAngularVelocity.mean...X"                   
 [36] "fBodyAngularVelocity.mean...Y"                   
 [37] "fBodyAngularVelocity.mean...Z"                   
 [38] "fBodyAngularVelocity.meanFreq...X"               
 [39] "fBodyAngularVelocity.meanFreq...Y"               
 [40] "fBodyAngularVelocity.meanFreq...Z"               
 [41] "fBodyAccelerationMagnitude.mean.."               
 [42] "fBodyAccelerationMagnitude.meanFreq.."           
 [43] "fBodyBodyAccelerationJerkMagnitude.mean.."       
 [44] "fBodyBodyAccelerationJerkMagnitude.meanFreq.."   
 [45] "fBodyBodyAngularVelocityMagnitude.mean.."        
 [46] "fBodyBodyAngularVelocityMagnitude.meanFreq.."    
 [47] "fBodyBodyAngularVelocityJerkMagnitude.mean.."    
 [48] "fBodyBodyAngularVelocityJerkMagnitude.meanFreq.."
 [49] "tBodyAcceleration.std...X"                       
 [50] "tBodyAcceleration.std...Y"                       
 [51] "tBodyAcceleration.std...Z"                       
 [52] "tGravityAcceleration.std...X"                    
 [53] "tGravityAcceleration.std...Y"                    
 [54] "tGravityAcceleration.std...Z"                    
 [55] "tBodyAccelerationJerk.std...X"                   
 [56] "tBodyAccelerationJerk.std...Y"                   
 [57] "tBodyAccelerationJerk.std...Z"                   
 [58] "tBodyAngularVelocity.std...X"                    
 [59] "tBodyAngularVelocity.std...Y"                    
 [60] "tBodyAngularVelocity.std...Z"                    
 [61] "tBodyAngularVelocityJerk.std...X"                
 [62] "tBodyAngularVelocityJerk.std...Y"                
 [63] "tBodyAngularVelocityJerk.std...Z"                
 [64] "tBodyAccelerationMagnitude.std.."                
 [65] "tGravityAccelerationMagnitude.std.."             
 [66] "tBodyAccelerationJerkMagnitude.std.."            
 [67] "tBodyAngularVelocityMagnitude.std.."             
 [68] "tBodyAngularVelocityJerkMagnitude.std.."         
 [69] "fBodyAcceleration.std...X"                       
 [70] "fBodyAcceleration.std...Y"                       
 [71] "fBodyAcceleration.std...Z"                       
 [72] "fBodyAccelerationJerk.std...X"                   
 [73] "fBodyAccelerationJerk.std...Y"                   
 [74] "fBodyAccelerationJerk.std...Z"                   
 [75] "fBodyAngularVelocity.std...X"                    
 [76] "fBodyAngularVelocity.std...Y"                    
 [77] "fBodyAngularVelocity.std...Z"                    
 [78] "fBodyAccelerationMagnitude.std.."                
 [79] "fBodyBodyAccelerationJerkMagnitude.std.."        
 [80] "fBodyBodyAngularVelocityMagnitude.std.."         
 [81] "fBodyBodyAngularVelocityJerkMagnitude.std.."

## Original Dataset
The original dataset includes the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 