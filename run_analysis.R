## 1) Merges the training and the test sets to create one data set.
## 2) Extracts only the measurements on the mean and standard deviation for each measurement.
## 3) Uses descriptive activity names to name the activities in the data set
## 4) Appropriately labels the data set with descriptive variable names.
## 5) From the data set in step 4, creates a second, independent tidy data set with
# the average of each variable for each activity and each subject.

setwd("~/Academico/Cursos e Disciplinas/Data Science Specialization")

library(tidyverse)

## Load test data ------

test <- list.files("course3/final_project/UCI HAR Dataset/test", pattern = ".txt", full.names = TRUE)
test <- lapply(test, read.table)
str(test)
names.test <- list.files("course3/final_project/UCI HAR Dataset/test", pattern = "test", full.names = FALSE)
names.test <- sub(".txt", "", names.test)
names(test) <- names.test

rm(names.test)


## Load train data ----

train <- list.files("course3/final_project/UCI HAR Dataset/train", pattern = ".txt", full.names = TRUE)
train <- lapply(train, read.table)
str(train)
names.train <- list.files("course3/final_project/UCI HAR Dataset/train", pattern = "train", full.names = FALSE)
names.train <- sub(".txt", "", names.train)
names(train) <- names.train

rm(names.train)

str(test$X_test)
str(train$X_train)

## 1) Merges the training and the test sets to create one data set. ------
## first, create a column in each individual set to indicate if it is train or test
## and add the identification for activity and subject
## reorder in the end to put the identity columns first
test_set <- test$X_test %>% 
      mutate(type = "test",
             subject = test$subject_test[,1],
             activity = test$y_test[,1]) %>% 
      dplyr::select(type, subject, activity, V1:V561)
str(test_set)

train_set <- train$X_train %>% 
      mutate(type = "train",
             subject = train$subject_train[,1],
             activity = train$y_train[,1]) %>% 
      dplyr::select(type, subject, activity, V1:V561)
str(train_set)

rm(test, train)

## join the train and test tables
feature_data <- rbind(test_set, train_set)


## 2) Extracts only the mean and standard deviation for each measurement ----
## get the names of the variables, so we can select the means and standard deviations
## load labels and feature information
labels <- read.table("course3/final_project/UCI HAR Dataset/activity_labels.txt")
features <- read.table("course3/final_project/UCI HAR Dataset/features.txt")

labels
str(features)

## rename the columns in the dataset to match the feature names
colnames(feature_data) <- c("type", "subject", "activity", as.character(features$V2))
## need to use as.character because it is read as a factor

## select the columns refering to mean and standard deviation
feature_selec <- feature_data[,c(1:3, contains("mean(", vars = colnames(feature_data),),
                                 contains("std", vars = colnames(feature_data)))]
str(feature_selec)


## 3) Uses descriptive activity names to name the activities in the data set ----
## translate activity labels from number to names, using the "labels" table

# first, I rename the variable in the "labels" table to match the name in the
# feature table, and give an intuitive name to V2
labels <- rename(.data = labels, activity = V1, label = V2)

# then, I join the tables by the activity number, creating a new table with a
# column with the label names, and attribute that column to the original 
# activity column in the feature_data table
feature_data_labels <- left_join(feature_selec[,1:3], labels, by = "activity")
str(feature_data_labels)
feature_selec$activity <- tolower(feature_data_labels$label) # lower case

str(feature_selec)
rm(feature_data_labels)

## 4) Appropriately labels the data set with descriptive variable names ----
## remove "()" to simplify variable names
colnames(feature_selec) <- sub(pattern = "mean\\(\\)", replacement = "mean",
                               x = colnames(feature_selec))
colnames(feature_selec) <- sub(pattern = "std\\(\\)", replacement = "std",
                               x = colnames(feature_selec))
colnames(feature_selec) <- sub("^t", "time",
                               x = colnames(feature_selec))
colnames(feature_selec) <- sub("^f", "frequency",
                               x = colnames(feature_selec))
colnames(feature_selec) <- sub("Gyro", "Gyroscope",
                               x = colnames(feature_selec))
colnames(feature_selec) <- sub("Acc", "Acceleration",
                               x = colnames(feature_selec))
colnames(feature_selec) <- gsub("\\-", "_",
                               x = colnames(feature_selec))
colnames(feature_selec) <- sub("timeype", "type", x = colnames(feature_selec))



# 5) From the data set in step 4, creates a second, independent tidy data set -----
## with the average of each variable for each activity and each subject. 

feature_means <- feature_selec %>% group_by(activity, subject) %>%
      summarise_all(list(mn = mean))

write.table(feature_means, "course3/final_project/course3_datascience/dataset.txt", row.names = FALSE)
rm(list=ls())
gc()