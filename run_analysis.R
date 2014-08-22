#---Step 1 : Merges the training and the test sets to create one data set.

 #--Read all the training files---
 subject_train <- read.table("C://R/UCI HAR Dataset/train/subject_train.txt",sep="\n",header=FALSE)
 X_train <- read.table("C://R/UCI HAR Dataset/train/X_train.txt")
 Y_train <- read.table("C://R/UCI HAR Dataset/train/y_train.txt",sep="\n",header=FALSE)

 #--Read all the test files---
 subject_test <- read.table("C://R/UCI HAR Dataset/test/subject_test.txt",sep="\n",header=FALSE)
 X_test <- read.table("C://R/UCI HAR Dataset/test/X_test.txt")
 Y_test <- read.table("C://R/UCI HAR Dataset/test/y_test.txt",sep="\n",header=FALSE)
 
 #--Merge the training files together
 xysubject_train <- cbind(X_train,Y_train,subject_train)

 #--Merge the test files together
 xysubject_test <- cbind(X_test,Y_test,subject_test)

 #--check the dimensions of the data
 #--dim(xysubject_test)
 # --[1] 2947    563
 #--- dim(xysubject_train)
 #---[1] 7352    563

 #--Now merge the training and test datasets together
 m_xysubject <- rbind(xysubject_train,xysubject_test)


#---Step 2 : Extracts only the measurements on the mean and standard deviation for each measurement. 
 #Read the features file to get the column values
 features <- read.table("C://R/UCI HAR Dataset/features.txt")

 #Change the column values to the merged dataset based on the values obtained from the features file
 colnames(m_xysubject) <- c(as.character(features$V2),"activity","subject")

 #Extract only the columns with mean and standard deviation for each measurement
 m_xysubject <- m_xysubject[,grep("activity|subject|[Mm]ean\\(|[Mm]eanFreq\\(|[Ss][Tt][Dd]\\(", names(m_xysubject))]

 #Check the column names to make sure we only have Mean and Std in the variable names
  #names(m_xysubject)

#---Step 3: Uses descriptive activity names to name the activities in the data set

 activity_labels <-  read.table("C://R/UCI HAR Dataset/activity_labels.txt")

 m_xysubject$activity[m_xysubject$activity == 1] <- "WALKING"
 m_xysubject$activity[m_xysubject$activity == 2] <- "WALKING_UPSTAIRS"
 m_xysubject$activity[m_xysubject$activity == 3] <- "WALKING_DOWNSTAIRS"
 m_xysubject$activity[m_xysubject$activity == 4] <- "SITTING"
 m_xysubject$activity[m_xysubject$activity == 5] <- "STANDING"
 m_xysubject$activity[m_xysubject$activity == 6] <- "LAYING"

#---Step 4: Appropriately labels the data set with descriptive variable names. 

 names(m_xysubject) <- gsub("\\()","",names(m_xysubject))
 names(m_xysubject) <- gsub("mean","Mean",names(m_xysubject))
 names(m_xysubject) <- gsub("std","STD",names(m_xysubject))
 names(m_xysubject) <- gsub("^t","time",names(m_xysubject))
 names(m_xysubject) <- gsub("^f","freq",names(m_xysubject))
 names(m_xysubject) <- gsub("-","",names(m_xysubject))
 names(m_xysubject) <- gsub("BodyBody","Body",names(m_xysubject))
 
  #Check the column names to make sure we have appropriate label names
  #names(m_xysubject)

#--Step 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

 #Calculate average of each variable for each activity and each subject
 attach(m_xysubject)
 tidy_data <- aggregate(m_xysubject[ ,1:79], by=list(m_xysubject$activity,m_xysubject$subject), FUN="mean", na.rm=TRUE)
 detach(m_xysubject)
 
 #Update the column names for Group.1 and Group.2
 colnames(tidy_data)[1] <- "activity"
 colnames(tidy_data)[2] <- "subject"

 #Create a second, independent tidy data set
 write.table(tidy_data,"C://R/UCI HAR Dataset/tidydata.txt", row.names=FALSE)
 reread <- read.table("C://R/UCI HAR Dataset/tidydata.txt", header = TRUE)

 #Test if the tidy data set has same number of rows and columns compared to the pre tidy data set
  #nrow(tidy_data) == nrow(reread)
  # [1] TRUE
  #ncol(tidy_data) == ncol(reread)
  # [1] TRUE


