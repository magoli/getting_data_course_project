## Code Book <br />
=================
<br />
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. <br />
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration 
signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. <br />
<br />
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). <br />
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). <br />
<br />
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). <br />
<br />
These signals were used to estimate variables of the feature vector for each pattern:  <br />
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.<br />
'_mean' refers to the Mean value average of each variable for each activity and each subject<br />
'_std' refers Standard deviation average of each variable for each activity and each subject <br />
<br />
<br />

tBodyAcc_mean-XYZ    <br />
tGravityAcc_mean-XYZ<br />
tBodyAccJerk_mean-XYZ<br />
tBodyGyro-XYZ<br />
tBodyGyroJerk_mean-XYZ<br />
tBodyAccMag_mean<br />
tGravityAccMag_mean<br />
tBodyAccJerkMag_mean<br />
tBodyGyroMag_mean<br />
tBodyGyroJerkMag_mean<br />
fBodyAcc-XYZ_mean<br />
fBodyAccJerk-XYZ_mean<br />
fBodyGyro-XYZ_mean<br />
fBodyAccMag_mean<br />
fBodyAccJerkMag_mean<br />
fBodyGyroMag_mean<br />
fBodyGyroJerkMag_mean<br />
<br /><br />
tBodyAcc_std-XYZ    <br />
tGravityAcc_std-XYZ<br />
tBodyAccJerk_std-XYZ<br />
tBodyGyro-XYZ<br />
tBodyGyroJerk_std-XYZ<br />
tBodyAccMag_std<br />
tGravityAccMag_std<br />
tBodyAccJerkMag_std<br />
tBodyGyroMag_std<br />
tBodyGyroJerkMag_std<br />
fBodyAcc-XYZ_std<br />
fBodyAccJerk-XYZ_std<br />
fBodyGyro-XYZ_std<br />
fBodyAccMag_std<br />
fBodyAccJerkMag_std<br />
fBodyGyroMag_std<br />
fBodyGyroJerkMag_std<br />
<br /><br />
The set of variables that were estimated from these signals are (refers to the variable 'Activity_label'): <br />
<br /><br />
1 WALKING<br />
2 WALKING_UPSTAIRS<br />
3 WALKING_DOWNSTAIRS<br />
4 SITTING<br />
5 STANDING<br />
6 LAYING<br />
<br />
<br />
