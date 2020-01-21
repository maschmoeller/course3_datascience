# course3_datascience

The dataset used for this project is available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Only the measurement files were used, not the raw data on the signals (contained in the Inertial Signals folders).

The script run_analysis.R contains the sequence proposed for the project, consisting of:

1) Merging the training and the test sets to create one data set;
2) Extracting the measurements on the mean and standard deviation for each measurement;
3) Using descriptive activity names to name the activities in the data set;
4) Appropriately labeling the data set with descriptive variable names;
5) From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject.

The dataset resulting from step 5 is the dataset.txt file contained in this github repository.

Details on the initial dataset and the one presented in dataset.txt are given in CodeBook.md.
