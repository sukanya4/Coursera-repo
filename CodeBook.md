CODE BOOK
================

The output of the "Course Project -Activity Recognition Using Smartphones Project" is a tidy data set called 'tidydata.txt'
"tidydata.txt" file contains 180 rows and 80 columns.

Variable Names in the Tidy data set are:
==========================================
 [1] "activity"                       
 [2] "subject"                        
 [3] "timeBodyAccMeanX"
 [4] "timeBodyAccMeanY"               
 [5] "timeBodyAccMeanZ" 
 [6] "timeBodyAccSTDX"                
 [7] "timeBodyAccSTDY"
 [8] "timeBodyAccSTDZ"                
 [9] "timeGravityAccMeanX"  
[10] "timeGravityAccMeanY"            
[11] "timeGravityAccMeanZ"
[12] "timeGravityAccSTDX"             
[13] "timeGravityAccSTDY" 
[14] "timeGravityAccSTDZ"             
[15] "timeBodyAccJerkMeanX"  
[16] "timeBodyAccJerkMeanY"           
[17] "timeBodyAccJerkMeanZ"  
[18] "timeBodyAccJerkSTDX"            
[19] "timeBodyAccJerkSTDY"   
[20] "timeBodyAccJerkSTDZ"            
[21] "timeBodyGyroMeanX"   
[22] "timeBodyGyroMeanY"              
[23] "timeBodyGyroMeanZ"              
[24] "timeBodyGyroSTDX"               
[25] "timeBodyGyroSTDY"               
[26] "timeBodyGyroSTDZ"               
[27] "timeBodyGyroJerkMeanX"           
[28] "timeBodyGyroJerkMeanY"          
[29] "timeBodyGyroJerkMeanZ"          
[30] "timeBodyGyroJerkSTDX"           
[31] "timeBodyGyroJerkSTDY"           
[32] "timeBodyGyroJerkSTDZ"           
[33] "timeBodyAccMagMean"              
[34] "timeBodyAccMagSTD"              
[35] "timeGravityAccMagMean"           
[36] "timeGravityAccMagSTD"           
[37] "timeBodyAccJerkMagMean"         
[38] "timeBodyAccJerkMagSTD"          
[39] "timeBodyGyroMagMean"             
[40] "timeBodyGyroMagSTD"             
[41] "timeBodyGyroJerkMagMean"         
[42] "timeBodyGyroJerkMagSTD"         
[43] "freqBodyAccMeanX"               
[44] "freqBodyAccMeanY"               
[45] "freqBodyAccMeanZ"                
[46] "freqBodyAccSTDX"                
[47] "freqBodyAccSTDY"                 
[48] "freqBodyAccSTDZ"                
[49] "freqBodyAccMeanFreqX"           
[50] "freqBodyAccMeanFreqY"           
[51] "freqBodyAccMeanFreqZ"            
[52] "freqBodyAccJerkMeanX"           
[53] "freqBodyAccJerkMeanY"            
[54] "freqBodyAccJerkMeanZ"           
[55] "freqBodyAccJerkSTDX"            
[56] "freqBodyAccJerkSTDY"            
[57] "freqBodyAccJerkSTDZ"            
[58] "freqBodyAccJerkMeanFreqX"       
[59] "freqBodyAccJerkMeanFreqY"       
[60] "freqBodyAccJerkMeanFreqZ"       
[61] "freqBodyGyroMeanX"              
[62] "freqBodyGyroMeanY"              
[63] "freqBodyGyroMeanZ"              
[64] "freqBodyGyroSTDX"               
[65] "freqBodyGyroSTDY"               
[66] "freqBodyGyroSTDZ"               
[67] "freqBodyGyroMeanFreqX"           
[68] "freqBodyGyroMeanFreqY"          
[69] "freqBodyGyroMeanFreqZ"           
[70] "freqBodyAccMagMean"             
[71] "freqBodyAccMagSTD"               
[72] "freqBodyAccMagMeanFreq"         
[73] "freqBodyAccJerkMagMean"      
[74] "freqBodyAccJerkMagSTD"      
[75] "freqBodyAccJerkMagMeanFreq" 
[76] "freqBodyGyroMagMean"        
[77] "freqBodyGyroMagSTD"         
[78] "freqBodyGyroMagMeanFreq"    
[79] "freqBodyGyroJerkMagMean"    
[80] "freqBodyGyroJerkMagSTD"     
[81] "freqBodyGyroJerkMagMeanFreq"


Variable definition
=======================
All the variables (expect for 'activity' and 'subject') are averages of each variable for each "activity and subject"

[1] activity - defines the activities performed by the volunteers for the smartphone (Samsung Galaxy S II)'s experiment
[2] subject - represents the volunteers who carried out the smartphone (Samsung Galaxy S II)'s experiment

Meaning of some abbreviations in the variable names:
------------------------------------------------------
- suffix of X, Y or Z is used to denote 3-axial signals in the X, Y and Z directions 
- prefix of 'time' refers to time signals
- prefix of 'freq' refers to frequency domain signals

- suffix of Mean: represents the Mean value,
- suffix of STD: represents the Standard deviation,
- suffix of MeanFreq: represents the Weighted average of the frequency components to obtain a mean frequency

- Acc: represents Accelerometer
- Gyro: represents Gyroscope
- Mag: represents Magnitude



Range of values
====================
[1] activity - There are 6 activities that are described in the tidy data set
	 [1]  WALKING
     [2]  WALKING_UPSTAIRS
     [3]  WALKING_DOWNSTAIRS
     [4]  SITTING
     [5]  STANDING
     [6]  LAYING
	 
[2] subject - There 30 subjects who carried the 6 activities, and the values in the tidy data set includes
		      1 , 2 , 3,  4 , 5  ,6 , 7 , 8 , 9 ,10 ,11 ,12 ,13 ,14, 15, 16, 17 ,18 ,19 ,20, 21, 22, 23, 24, 25, 26, 27 ,28 ,29 ,30

