## Project Description
Course Project in "Getting and Cleaning Data" Course in Cousera.

###Collection of the raw data (See "Source" section below)
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment." (Extracted from the README.md file in the original dataset)

###Notes on the original (raw) data 
An important characteristic of the raw data is that it is split in multiple files that therefore have to be combined to yield the desired results. Measurements were located in two files (corresponding to test and train measurements), and variables names, subjects and activities were each in its own separate file.

##Creating the tidy datafile

###Guide to create the tidy data file

1. Save the "run_analysis.R" script in the desired folder;
2. Open the script and set the working directory to match the folder in which the script was saved;
3. Download the zipped data file and unzip it into your working directory - inside folder "UCI HAR Dataset";
4. Run the script;
5. The script will save the tidy data as a TXT file called "tidyData.txt".

###Cleaning of the data
The script adds column names for both the test and train datasets  and adds two columns:

1. Subjects, that indicates to which of the 30 subjects each row corresponds;
2. Activities, that specifies the code of the activity performed in each row.

The script then merges the "test" and "train" datasets in one large dataset. It then substitutes the activity descriptions for the codes provided for each row ("1" is replaced by "walking", 2 by "walking upstairs" and so on).

A subset of columns is selected to include only means and standard deviations as per the exercise instructions.

In order to facilitate reading, column names are expanded to better explain abbreviations ("Acc" is replaced by "Acceleration" and so on).

Finally, the data is summarized by subject and activity, calculating average values for all other columns.

Further details can be found in the README.MD file that accompanies this Codebook.

##Description of the variables in the tiny_data.txt file
The resulting dataset has 180 observations of 81 variables:
> [1] 180  81

The structure of the data is as follows:

Subject | Activity   | Averages of 79 measurements ...
------  | ---------  | --------
1 | walking          | average of normalized measures 
1 | walking upstairs | average of normalized measures

All measurements are normalized to fit between -1 and +1. The variables included are:
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

##Sources
Source of the Data: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

More details about the data and the project: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones