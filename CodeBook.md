Description of dataset tidyData.txt
=========================

List of columns in tidyData.txt:
-------------------------
* ActivityBySubject: pair Activity Name plus Subject of the measurments (with separator .).
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y 
* tBodyAcc-mean()-Z 
* tBodyAcc-std()-X 
* tBodyAcc-std()-Y 
* tBodyAcc-std()-Z 
* tGravityAcc-mean()-X 
* tGravityAcc-mean()-Y 
* tGravityAcc-mean()-Z 
* tGravityAcc-std()-X 
* tGravityAcc-std()-Y 
* tGravityAcc-std()-Z 
* tBodyAccJerk-mean()-X 
* tBodyAccJerk-mean()-Y 
* tBodyAccJerk-mean()-Z 
* tBodyAccJerk-std()-X 
* tBodyAccJerk-std()-Y 
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X 
* tBodyGyro-mean()-Y 
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X 
* tBodyGyro-std()-Y 
* tBodyGyro-std()-Z 
* tBodyGyroJerk-mean()-X 
* tBodyGyroJerk-mean()-Y 
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X 
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z 
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean() 
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std() 
* tBodyGyroMag-mean()
* tBodyGyroMag-std() 
* tBodyGyroJerkMag-mean() 
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X 
* fBodyAcc-mean()-Y 
* fBodyAcc-mean()-Z 
* fBodyAcc-std()-X 
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAcc-meanFreq()-X
* fBodyAcc-meanFreq()-Y
* fBodyAcc-meanFreq()-Z 
* fBodyAccJerk-mean()-X 
* fBodyAccJerk-mean()-Y 
* fBodyAccJerk-mean()-Z 
* fBodyAccJerk-std()-X 
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z 
* fBodyAccJerk-meanFreq()-X
* fBodyAccJerk-meanFreq()-Y 
* fBodyAccJerk-meanFreq()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y 
* fBodyGyro-std()-Z
* fBodyGyro-meanFreq()-X
* fBodyGyro-meanFreq()-Y
* fBodyGyro-meanFreq()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std() 
* fBodyAccMag-meanFreq() 
* fBodyBodyAccJerkMag-mean() 
* fBodyBodyAccJerkMag-std()
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyGyroMag-mean() 
* fBodyBodyGyroMag-std() 
* fBodyBodyGyroMag-meanFreq()
* fBodyBodyGyroJerkMag-mean() 
* fBodyBodyGyroJerkMag-std() 
* fBodyBodyGyroJerkMag-meanFreq()


Transformation from original dataset:
-------------------------
* subjects_train, y_train and X_train merged in only one data frame ( train )
* subjects_test, y_test and X_test merged in only one data frame ( test )
* X as result of merging the rows of *train* and *test*
* Filter columns of data frame X, regarding expressions "mean()" or "std()" ( vector selected with column names filtered )
* generate new column ActivityBySubject as "Activity.Subject" ( Activity = description of activity )
* Data frame melted by ActivityBySubject
* Mean calculated over melted data frame, by ActivityBySubject and Columns in vector selected


