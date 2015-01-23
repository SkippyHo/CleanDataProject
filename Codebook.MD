# Codebook 

1. Data source :[Human Activity Recognition Using Smartphones Dataset] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

2. To create a tidy data set, we first extract the measurements on the mean and standard deviation for each measurement, and 
further reduce our data set such that only the measurements in time domian are contained. We made this choice because these
time domain data are most relevant and relatively less manipulated data, compared to the data in frequency domain.

3. Then we assign subject names and activities to each observation and rename our variables with CamelCase convention.

4. Finally, we calculate the average of each variable for each activity and each subject as required. 

5. Export desired tidy data set as a txt file.

*Appendix: variable rules*

We basically keep most of the naming rules for variables in the original data with little adjustment 
such that R can recognize those variable names. In addition, we also add (first) two rows being "subject" and "activity"
which indicate volunteer indices and activities respectively.

The naming rules for the rest of vairables (measurements) are quoted from the "README.txt" file within original data package
as follows:
>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency 
of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration 
signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated 
using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The modified variable names are simply replace the dash "-" by "." and remove parentheses "()", which results in 
the final variable names:

* "subject" 
* "activity" 
* "tBodyAcc.mean.X"
* "tBodyAcc.mean.Y"
* "tBodyAcc.mean.Z"
* "tBodyAccJerk.mean.X"
* "tBodyAccJerk.mean.Y"
* "tBodyAccJerk.mean.Z"
* "tBodyGyro.mean.X"
* "tBodyGyro.mean.Y"
* "tBodyGyro.mean.Z"
* "tBodyGyroJerk.mean.X"
* "tBodyGyroJerk.mean.Y"
* "tBodyGyroJerk.mean.Z"
* "tBodyAccMag.mean"
* "tBodyAccJerkMag.mean"
* "tBodyGyroMag.mean"
* "tBodyGyroJerkMag.mean"
* "tBodyAcc.std.X"
* "tBodyAcc.std.Y"
* "tBodyAcc.std.Z"
* "tBodyAccJerk.std.X"
* "tBodyAccJerk.std.Y"
* "tBodyAccJerk.std.Z"
* "tBodyGyro.std.X"
* "tBodyGyro.std.Y"
* "tBodyGyro.std.Z"
* "tBodyGyroJerk.std.X"
* "tBodyGyroJerk.std.Y"
* "tBodyGyroJerk.std.Z"
* "tBodyAccMag.std"
* "tBodyAccJerkMag.std"
* "tBodyGyroMag.std"
* "tBodyGyroJerkMag.std"

