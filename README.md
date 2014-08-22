READ ME
=========

Coursera-repo - Activity Recognition Using Smartphones Project
==================================================================
It it assumed that the working directory has a directory by the name "UCI HAR Dataset"  with the following files

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

 Data download link for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


COURSE PROJECT DETAILS:
=======================

The following files were read in "run_analysis.R" script
=========================================================
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name. (This was manually read and used in the script logically)


"run_analysis.R" script does the following
============================================
"run_analysis.R" is in the working directory. However the script enteres the full path to the text files while reading it in.

Step 1: Merges the training and the test sets to create one data set.
=======================================================================
- Read all the training files 'train/X_train.txt','train/y_train.txt' and 'train/subject_train.txt' with read.table() function
- Read all the test files 'test/X_test.txt','test/y_test.txt' and 'test/subject_test.txt' with read.table() function
- Merge all the training files together with cbind() function 
- Merge all the test files together with cbind() function
- Merge the training and test files with rbind() function
- Now we have 563 columns with 10299 rows

Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
================================================================================================
- Read 'features.txt' which contains the column names with mean and standard deviation for the data obtained from reading X_train.txt and X_test.txt files
- Replace default column names with new column names for the dataset from Step 1
  -----------------------------------------------------------------------------------
  - add "activity" as the column name for Y_train/Y_test data 
  - add "subject" as the column name for the subject_test/subject_train data
  - add the new column names obtained from the features.txt to the  X_train/X_test data 
- For the column names added to the X_train/X_test data, Extract only mean and standard deviation
--------------------------------------------------------------------------------------------------
  - Use grep() function to only get column names such as Mean( , mean(, std(, Std(, STD(, MeanFreq(, meanFreq(
  - Also include "activity" and "subject" column names using grep() function
- Now we have 81 columns and 10299 rows
  

Step 3: Uses descriptive activity names to name the activities in the data set
===============================================================================
- "activity" column has data values in the range 1 to 6
- Read the 'activity_labels.txt' file and check what the values correspond to
- Assign the activity_labels to the activity range as shown below
  -  1            WALKING
     2   WALKING_UPSTAIRS
     3 WALKING_DOWNSTAIRS
     4            SITTING
     5           STANDING
     6             LAYING


Step 4: Appropriately labels the data set with descriptive variable names.
===========================================================================
- In this step we clean the column names of special characters and also change it to be more descriptive
- Using grep() function
  ----------------------
   - remove () and - 
   - change mean to Mean and std to STD
   - change prefix 't' to 'time' and prefix 'f' to 'freq' (representing frequency domain signal)
   - change duplicate names ex: BodyBody to Body

- I use camel case for easy readability with the starting letter in lower case 
- 3-axial signals in the X, Y and Z directions are retained as X, Y or Z as a suffix to the column names
- Mean: represents the Mean value,
  STD: represents the Standard deviation,
  MeanFreq: represents the Weighted average of the frequency components to obtain a mean frequency
- At the end of this step some of the column names appear as shown
   timeBodyAccMeanX,   
   freqBodyAccSTDY,
   freqBodyGyroMeanFreqZ,
   timeGravityAccMagSTD..... etc
   
  
Step 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
==========================================================================================================================
- Calculate the average of each variable (columns 1 to 79) for each activity and subject by using the aggregate() function
- aggregate() function creates two new columns Group.1 and Group.2
- replace the names of the Groups to match "activity" and "subject"
- Now we have 180 rows and 81 columns.
- using write.table() function, write the out put of the aggregate() results to tidydata.txt file
- Re-read the tidydata.txt using read.table() function and ensure that the results of this textfile matches the tidy data set.











