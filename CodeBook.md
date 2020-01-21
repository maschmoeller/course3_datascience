## CodeBook for "Getting and Cleaning Data" course
Variable(s)	and	Description
Activity:		One out of six activities perfomed by test subjects and recorded by the sensor: walking, walking_upstair, walking_downstairs, sitting, standing or laying
Subject:		Numbers 1 to 30, indicating the test subject (person)

"Time" group  

timeBodyAcceleration_mean_XYZ_mn,	timeBodyAcceleration_std_XYZ_mn, timeGravityAcceleration_mean_XYZ_mn, timeGravityAcceleration_std_XYZ_mn:	Means of the means and the standard deviations of the acceleration signal from the smartphone accelerometer X, Y and Z axis in standard gravity units 'g', for each subject performing each of the 6 acitivities. The sensor acceleration signal, was separated into body acceleration and gravity.   The original body acceleration signal was obtained by subtracting the gravity from the total acceleration. 

timeBodyGyroscope_mean_XYZ_mn, timeBodyGyroscope_std_XYZ_mn: The means of the means and of the standard deviations of the angular velocity signal, vector measured by the gyroscope for each window sample, in radians/second.

timeBodyAccelerationJerk_mean_XYZ_mn, timeBodyAccelerationJerk_std_XYZ_mn, timeBodyGyroscopeJerk_mean_XYZ_mn, timeBodyGyroscopeJerk_std_XYZ_mn:	Means of the means and of the standard deviations of the Jerk signals, obtained in the original datased from deriving in time the body linear acceleration and angular velocity.

timeBodyAccelerationJerkMag_mean_mn, timeBodyAccelerationJerkMag_std_mn, timeBodyAccelerationMag_mean_mn, timeBodyAccelerationMag_std_mn, timeGravityAccelerationMag_mean_mn, timeGravityAccelerationMag_std_mn, timeBodyGyroscopeJerkMag_mean_mn	
timeBodyGyroscopeJerkMag_std_mn, timeBodyGyroscopeMag_mean_mn, timeBodyGyroscopeMag_std_mn: 	Means of the means and of the standard deviations of the magnitudes of BodyAcceleration, GravityAcceleration, BodyAccelerationJerk, GravityAccelerationJerk, BodyGyroscope, BodyGyroscopeJerk. The magnitudes of these three-dimensional signals were calculated in the original dataset using the Euclidean norm.

"Frequency"group  
frequencyBodyAcceleration_mean_XYZ_mn, frequencyBodyAcceleration_std_XYZ_mn, frequencyBodyAccelerationJerk_mean_X_mn, frequencyBodyAccelerationJerk_std_XYZ_mn, frequencyBodyAccelerationMag_mean_mn, frequencyBodyAccelerationMag_std_mn, frequencyBodyAccelerationJerkMag_mean_mn, frequencyBodyAccelerationJerkMag_std_mn, frequencyBodyGyroscopeJerkMag_mean_mn, frequencyBodyGyroscopeJerkMag_std_mn, frequencyBodyGyroscopeMag_mean_mn, frequencyBodyGyroscopeMag_std_mn, frequencyBodyGyroscope_mean_X_mn, frequencyBodyGyroscope_std_XYZ_mn:
Means of the means and standard deviations of the frequencies of the Accelerometer and Gyroscope signals. "Frequency" labeled features were derived in the original dataset from applying a Fast Fourier Transform (FFT) to BodyAcceleration, BodyAccelerationJerk, BodyAccelerationMag, BodyAccelerationJerkMag, BodyGyroscope, BodyGyroscopeJerk and BodyGyroscopeJerkMag.

