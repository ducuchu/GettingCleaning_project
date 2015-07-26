# Code Book
_____________
*I'm not a native speacker*
## About database
The database used on this exercise was: Human Activity Recognition Using Smartphones Dataset, Version 1.0 by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto of Smartlab - Non Linear Complex Systems Laboratory. The database indicated "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually."

#Variable list and descriptions
------------------------------
The database extracted only the measurements on the mean (mean) and standard deviation (std) for each measurement. 

Variable name    | Description
-----------------|------------
subject          | ID the volunteers who performed the activity for each window sample. range: 1-30.
activityf         | Activity name. six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
timeAccelerometer.mean...X | Time domain signal. Instrument: Accelerometer. Axial: X
timeAccelerometer.mean...Y | Time domain signal. Instrument: Accelerometer. Axial: Y
timeAccelerometer.mean...Z | Time domain signal. Instrument: Accelerometer. Axial: Z
timeGravityAcc.mean...X    | Time domain signal. linear acceleration. Axial: X
timeGravityAcc.mean...Y    | Time domain signal. linear acceleration. Axial: Y
timeGravityAcc.mean...Z    | Time domain signal. linear acceleration. Axial: Z
timeAccelerometerJerk.mean...X   | Time domain signal. Jerk sign. Axial: X
timeAccelerometerJerk.mean...Y   | Time domain signal. Jerk sign. Axial: Y
timeAccelerometerJerk.mean...Z   | Time domain signal. Jerk sign. Axial: Z
timeGyroscope.mean...X | Time domain signal. Instrument: Gyroscope. Axial: X
timeGyroscope.mean...Y | Time domain signal. Instrument: Gyroscope. Axial: Y
timeGyroscope.mean...Z | Time domain signal. Instrument: Gyroscope. Axial: Z
timeGyroscopeJerk.mean...X   | Time domain signal. Jerk sign. Axial: X
timeGyroscopeJerk.mean...Y   | Time domain signal. Jerk sign. Axial: Y
timeGyroscopeJerk.mean...Z   | Time domain signal. Jerk sign. Axial: Z
frecuencyAccelerometer.mean...X | frequency domain signal. Instrument: Accelerometer. Axial: X
frecuencyAccelerometer.mean...Y | frequency domain signal. Instrument: Accelerometer. Axial: Y
frecuencyAccelerometer.mean...Z | frequency domain signal. Instrument: Accelerometer. Axial: Z
frequencyAccelerometerJerk.mean...X   | frequency domain signal Jerk sign. Axial: X
frequencyAccelerometerJerk.mean...Y   | frequency domain signal Jerk sign. Axial: Y
frequencyAccelerometerJerk.mean...Z   | frequency domain signal. Jerk sign. Axial: Z
frequencyGyroscope.mean...X | frequency domain signal. Instrument: Gyroscope. Axial: X
frequencyGyroscope.mean...Y | frequency domain signal. Instrument: Gyroscope. Axial: Y
frequencyGyroscope.mean...Z | frequency domain signal. Instrument: Gyroscope. Axial: Z
timeAccelerometer.std...X | Time domain signal. Instrument: Accelerometer. Axial: X
timeAccelerometer.std...Y | Time domain signal. Instrument: Accelerometer. Axial: Y
timeAccelerometer.std...Z | Time domain signal. Instrument: Accelerometer. Axial: Z
timeGravityAcc.std...X    | Time domain signal. linear acceleration. Axial: X
timeGravityAcc.std...Y    | Time domain signal. linear acceleration. Axial: Y
timeGravityAcc.std...Z    | Time domain signal. linear acceleration. Axial: Z
timeAccelerometerJerk.std...X   | Time domain signal. Jerk sign. Axial: X
timeAccelerometerJerk.std...Y   | Time domain signal. Jerk sign. Axial: Y
timeAccelerometerJerk.std...Z   | Time domain signal. Jerk sign. Axial: Z
timeGyroscope.std...X | Time domain signal. Instrument: Gyroscope. Axial: X
timeGyroscope.std...Y | Time domain signal. Instrument: Gyroscope. Axial: Y
timeGyroscope.std...Z | Time domain signal. Instrument: Gyroscope. Axial: Z
timeGyroscopeJerk.std...X   | Time domain signal. Jerk sign. Axial: X
timeGyroscopeJerk.std...Y   | Time domain signal. Jerk sign. Axial: Y
timeGyroscopeJerk.std...Z   | Time domain signal. Jerk sign. Axial: Z
frecuencyAccelerometer.std...X | frequency domain signal. Instrument: Accelerometer. Axial: X
frecuencyAccelerometer.std...Y | frequency domain signal. Instrument: Accelerometer. Axial: Y
frecuencyAccelerometer.std...Z | frequency domain signal. Instrument: Accelerometer. Axial: Z
frequencyAccelerometerJerk.std...X   | frequency domain signal Jerk sign. Axial: X
frequencyAccelerometerJerk.std...Y   | frequency domain signal Jerk sign. Axial: Y
frequencyAccelerometerJerk.std...Z   | frequency domain signal. Jerk sign. Axial: Z
frequencyGyroscope.std...X | frequency domain signal. Instrument: Gyroscope. Axial: X
frequencyGyroscope.std...Y | frequency domain signal. Instrument: Gyroscope. Axial: Y
frequencyGyroscope.std...Z | frequency domain signal. Instrument: Gyroscope. Axial: Z




