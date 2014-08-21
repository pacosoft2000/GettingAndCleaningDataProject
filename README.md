Getting and Cleaning Data: Course Project
=========================================

You can find in this repository the solution for the peer assignment in the Coursera course "Getting and Cleaning data", part of the Data Science specialization. The project consists on the transformation of raw data into a tidy dataset, throught the execution of a R script.

Raw data
------------------

Downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data dataset includes the following information:

* The feature labels measured with the sensors ( 561 in total ). In file features.txt.
* The subjects involved in the research ( 30 in total ). 
* Activity labels carried out by the subjects, during the research. In file activity_labels.txt.
* Information collected for training. 7352 instances in total
 * Features values. In file X_train.
 * Activites values. In file y_train.
 * Subjects values. In file subject_train.txt
* Information collected for testing. 2947 instances in total
 * Features values. In file X_test.
 * Activites values. In file y_test.
 * Subjects values. In file subject_test.txt
 
More information available in the following files of the zip:
* README.txt
* features_info.txt

Script and the tidy dataset
-------------------------------------
The R code for the transformation of the raw data was saved to a file called run_analysis.R. The main steps in this script are the followings:

* I. Download required libraries if necessary.
* II. Download and extract the UCI HAR Dataset if not available in the working directory.
* III. Merge the train and test datasets, select only the columns for standard deviation and mean variables, and tidy the name of these variables.
* IV. Aggreate the values of these  variables by Activity and Subject, and calculate the mean for these pairs.
* V. Save the resulting dataset to file tidyData.txt.

Code Book
-------------------
You can find detailed information about transformations and resulting variables in the file CodeBook.md of this repository. 
