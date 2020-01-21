# course3_datascience

The dataset used for this project is available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Description of the original dataset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), as provided by the README file:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. "

The features on the original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. The acceleration signal is separated into body and gravity acceleration signals (timeBodyAcceleration-XYZ and timeGravityAcceleration-XYZ). '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMag, timeGravityAccelerationMag, timeBodyAccelerationJerkMag, timeBodyGyroscopeMag, timeBodyGyroscopeJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcceleration-XYZ, frequencyBodyAccelerationJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerationJerkMag, frequencyBodyGyroscopeMag, frequencyBodyGyroscopeJerkMag.

For this project, the following files from the original database were used: 
 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/subject_test.txt': Test labels.

The files contained in the Inertial Signals folders were not used.

The script "run_analysis.R" contains the sequence proposed for the project, consisting of:

1) Merging the training and the test sets to create one data set;
2) Extracting the measurements on the mean and standard deviation for each measurement. That is, mean and standard deviation for the following:
  tBodyAcc-XYZ
  tGravityAcc-XYZ
  tBodyAccJerk-XYZ
  tBodyGyro-XYZ
  tBodyGyroJerk-XYZ
  tBodyAccMag
  tGravityAccMag
  tBodyAccJerkMag
  tBodyGyroMag
  tBodyGyroJerkMag
  fBodyAcc-XYZ
  fBodyAccJerk-XYZ
  fBodyGyro-XYZ
  fBodyAccMag
  fBodyAccJerkMag
  fBodyGyroMag
  fBodyGyroJerkMag
3) Using descriptive activity names to name the activities in the data set;
4) Appropriately labeling the data set with descriptive variable names;
5) From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject.

The dataset resulting from step 5 is the dataset.txt file contained in this github repository.

Details on the initial dataset and the one presented in dataset.txt are given in CodeBook.md.
