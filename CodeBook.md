This codebook describes the data contained in the “tidydata” dataset
created for the Getting and Cleaning Data course project on Coursera.

subject- This identifies the individual test subject who carried the
phone to collect data, this data sources from data downloaded from
“<a href="http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" class="uri">http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a>”
on an experiment on movement data collected by a Samsung Galaxy S.

activity_name- This shows the named activities that subjects were
performing when data was collected by the phones.

activity_number- This is data from the included link above that
indicated what ativity subjects were performing when data was collected
by the phones in a coded format. These numbers pertain to an activity
that can be referenced in the “activity\_labels” file.

The rest of the data include variables that contain measurements on
different movements. The included measurements are only columns from the
original training and test data that include the regular expressionss
“mean()” or “std()”. The calculated numbers in the data set are the
means of that data for each subject-activity pairing. I've included the codebook included on the original measurments following this list. The variables are
as follows:
"4" “tBodyAcc.mean…X” 
“5” “tBodyAcc.mean…Y” 
“6” “tBodyAcc.mean…Z” 
“7”“tGravityAcc.mean…X” 
“8” “tGravityAcc.mean…Y” 
“9” “tGravityAcc.mean…Z”
“10” “tBodyAccJerk.mean…X” 
“11” “tBodyAccJerk.mean…Y” 
“12”“tBodyAccJerk.mean…Z” 
“13” “tBodyGyro.mean…X” 
“14” “tBodyGyro.mean…Y”
“15” “tBodyGyro.mean…Z” 
“16” “tBodyGyroJerk.mean…X” 
“17”“tBodyGyroJerk.mean…Y” 
“18” “tBodyGyroJerk.mean…Z” 
“19”“tBodyAccMag.mean..” 
“20” “tGravityAccMag.mean..” 
“21”“tBodyAccJerkMag.mean..” 
“22” “tBodyGyroMag.mean..” 
“23”“tBodyGyroJerkMag.mean..” 
“24” “fBodyAcc.mean…X” 
“25” “fBodyAcc.mean…Y”
“26” “fBodyAcc.mean…Z” 
“27” “fBodyAcc.meanFreq…X” 
“28”“fBodyAcc.meanFreq…Y” 
“29” “fBodyAcc.meanFreq…Z” 
“30”“fBodyAccJerk.mean…X” 
“31” “fBodyAccJerk.mean…Y” 
“32”“fBodyAccJerk.mean…Z” 
“33” “fBodyAccJerk.meanFreq…X” 
“34”“fBodyAccJerk.meanFreq…Y” 
“35” “fBodyAccJerk.meanFreq…Z” 
“36”“fBodyGyro.mean…X”
“37” “fBodyGyro.mean…Y” 
“38” “fBodyGyro.mean…Z” 
“39”“fBodyGyro.meanFreq…X” 
“40” “fBodyGyro.meanFreq…Y” 
“41”“fBodyGyro.meanFreq…Z” 
“42” “fBodyAccMag.mean..” 
“43”“fBodyAccMag.meanFreq..” 
“44” “fBodyBodyAccJerkMag.mean..” 
“45”“fBodyBodyAccJerkMag.meanFreq..” 
“46” “fBodyBodyGyroMag.mean..” 
“47”“fBodyBodyGyroMag.meanFreq..” 
“48” “fBodyBodyGyroJerkMag.mean..” 
“49”“fBodyBodyGyroJerkMag.meanFreq..” 
“50” “angle.tBodyAccMean.gravity.”
“51” “angle.tBodyAccJerkMean..gravityMean.” 
“52”“angle.tBodyGyroMean.gravityMean.” 
“53”“angle.tBodyGyroJerkMean.gravityMean.” 
“54” “angle.X.gravityMean.” 
“55”“angle.Y.gravityMean.” 
“56” “angle.Z.gravityMean.” 
“57” “tBodyAcc.std…X”
“58” “tBodyAcc.std…Y” 
“59” “tBodyAcc.std…Z”
“60” “tGravityAcc.std…X”
“61” “tGravityAcc.std…Y” 
“62” “tGravityAcc.std…Z” 
“63”“tBodyAccJerk.std…X” 
“64” “tBodyAccJerk.std…Y” 
“65” “tBodyAccJerk.std…Z”
“66” “tBodyGyro.std…X” 
“67” “tBodyGyro.std…Y” 
“68” “tBodyGyro.std…Z”
“69” “tBodyGyroJerk.std…X” 
“70” “tBodyGyroJerk.std…Y” 
“71”“tBodyGyroJerk.std…Z” 
“72” “tBodyAccMag.std..” 
“73”“tGravityAccMag.std..” 
“74” “tBodyAccJerkMag.std..” 
“75”“tBodyGyroMag.std..” 
“76” “tBodyGyroJerkMag.std..” 
“77” “fBodyAcc.std…X”
“78” “fBodyAcc.std…Y” 
“79” “fBodyAcc.std…Z” 
“80” “fBodyAccJerk.std…X”
“81” “fBodyAccJerk.std…Y” 
“82” “fBodyAccJerk.std…Z” 
“83”“fBodyGyro.std…X” 
“84” “fBodyGyro.std…Y” 
“85” “fBodyGyro.std…Z” 
“86”“fBodyAccMag.std..” 
“87” “fBodyBodyAccJerkMag.std..” 
“88”“fBodyBodyGyroMag.std..” 
“89” “fBodyBodyGyroJerkMag.std..”

Original codebook included with data:
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
