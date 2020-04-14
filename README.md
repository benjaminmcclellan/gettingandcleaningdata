---
title: "README"
author: "Ben McClellan"
date: "4/14/2020"
output: html_document
--- gettingandcleaningdata
Updated 04/14/2020
run_analysis.R script

Downloading the data 
========
This script downloads data from an online source, creates a local version of the data, cleans up the data and then performs some basic analyses on the dataset.  This script works with data created by Jorge L. Reyes-Ortiz et al. in a study in data collection on movement using a Samsung Galaxy S. I included the original "README" file at the end of this document, which pertains to the original data collection.  

The first seciton of code checks for a local directory "data" and creates one if one does not already exist. This function occurs in the current working directory when run.  The script then downloads a compressed file with multiple data files contained within it.  Following a download of the compressed data, the folders and files are extracted into a functional form. 

Compiling the data into separate training and test data frames
==========
Following downloading the desired data to local files, the desired data files were loaded into the working environment.  The features file contains all of the column labels for both the training and test data, as the number of rows in the features files corresponds with the number of columns in both the training and test data.  The activity labels and subject labels were also located in files separate from the bulk of the training and testing data.  Both activity lables and subject data were loaded in for both the training run and the test run.  The measured data from the phones was located in the "X_train" and "X_test" files.  These were both then loaded into the working environment.  Following loading all of the desired data, the activity labels and subject data were both added onto the training and testing measurement data as their own columns, though the testing and training data remains separated at this point.  

Merging the data
==========
To merge the two data frames, first ids were assigned to each data set so that no overlap would be present in the merging process.  Since both data frames for train and test contain the same column format in what they measure and the order that those measurements are arranged in, the rows are binded together to create a dataset "all_data" that covers both the training and test runs.  

Extracting mean and standard deviation measurements
==========
The following selection of the script extracts only the measurements collected that contain means and standard deviations of various measurements.  This is obtained by creating a new dataset that selects only columnts containing the regular expressions "mean()" or "std()".

Labeling the activities
==========
The provided data from the online source gives the activiy labels in a coded form.  This form can be seen in the file "activity_labels.txt".  To provide more informative data, the next section of the script provides an ordered character vector pertaining to the provided numbers in the already-loaded activity data.  A new column containing the activity names is created in reference to the already-loaded activity number data.  The script then rearranges the data so that the activity data(both columns) and the subject numbers load at the beginning of the data frame.  

Getting the mean based on subject-activity pairings
===========
The final portion of the script groups the data by the subject and the activity and then provides an average of each column based on each grouping.  This is to say that the average of each variable for a certain subject performing a certain activity is calculated and organized into a new data frame: "tidydata".


README from raw data folder provided by Reyes-Ortiz et al.
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

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

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
