---
output:
  pdf_document: default
  html_document: default
---
CodeBook
================

### Variable names in the outputs of run\_analysis.R
#### Indexing variables:
-   activity: The activity that was performed. One of the following: WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING
-   subject: Identifies the subject who performed the activity. Its range is from 1 to 30.
+ dataset: Identifies the observation's original data set. One of the following: TRAIN, TEST. Only available in mean_and_std.txt.

#### Measured data:
-   tbodyacc.mean.x: mean acceleration of the body in direction X. Its range is from -1 to 1.
-   tbodyacc.mean.y: mean acceleration of the body in direction Y. Its range is from -1 to 1.
-   tbodyacc.mean.z: mean acceleration of the body in direction Z. Its range is from -1 to 1.
-   tbodyacc.std.x: standard deviation of the acceleration of the body in direction X. Its range is from -1 to 1.
-   tbodyacc.std.y: standard deviation of the acceleration of the body in direction Y. Its range is from -1 to 1.
-   tbodyacc.std.z: standard deviation of the acceleration of the body in direction Z. Its range is from -1 to 1.
-   tgravityacc.mean.x: mean acceleration by gravity in direction X. Its range is from -1 to 1.
-   tgravityacc.mean.y: mean acceleration by gravity in direction Y. Its range is from -1 to 1.
-   tgravityacc.mean.z: mean acceleration by gravity in direction Z. Its range is from -1 to 1.
-   tgravityacc.std.x: standard deviation of the acceleration of the gravity in direction X. Its range is from -1 to 1.
-   tgravityacc.std.y: standard deviation of the acceleration of the gravity in direction Y. Its range is from -1 to 1.
-   tgravityacc.std.z: standard deviation of the acceleration of the gravity in direction Z. Its range is from -1 to 1.
-   tbodyaccjerk.mean.x: mean of Jerk signals obtained from the body's acceleration in direction X. Its range is from -1 to 1.
-   tbodyaccjerk.mean.y: mean of Jerk signals obtained from the body's acceleration in direction Y. Its range is from -1 to 1.
-   tbodyaccjerk.mean.z: mean of Jerk signals obtained from the body's acceleration in direction Z. Its range is from -1 to 1.
-   tbodyaccjerk.std.x: standard deviation of Jerk signals obtained from the body's acceleration in direction X. Its range is from -1 to 1.
-   tbodyaccjerk.std.y: standard deviation of Jerk signals obtained from the body's acceleration in direction X. Its range is from -1 to 1.
-   tbodyaccjerk.std.z: standard deviation of Jerk signals obtained from the body's acceleration in direction X. Its range is from -1 to 1.
-   tbodygyro.mean.x: mean angular velocity of the body in direction X. Its range is from -1 to 1.
-   tbodygyro.mean.y: mean angular velocity of the body in direction Y. Its range is from -1 to 1.
-   tbodygyro.mean.z: mean angular velocity of the body in direction Z. Its range is from -1 to 1.
-   tbodygyro.std.x: standard deviation of angular velocity of the body in direction X. Its range is from -1 to 1.
-   tbodygyro.std.y: standard deviation of angular velocity of the body in direction Y. Its range is from -1 to 1.
-   tbodygyro.std.z: standard deviation of angular velocity of the body in direction Z. Its range is from -1 to 1.
-   tbodygyrojerk.mean.x: mean of Jerk signals obtained from the body's angular velocity in direction X. Its range is from -1 to 1.
-   tbodygyrojerk.mean.y: mean of Jerk signals obtained from the body's angular velocity in direction Y. Its range is from -1 to 1.
-   tbodygyrojerk.mean.z: mean of Jerk signals obtained from the body's angular velocity in direction Z. Its range is from -1 to 1.
-   tbodygyrojerk.std.x: standard deviation of Jerk signals obtained from the body's angular velocity in direction X. Its range is from -1 to 1.
-   tbodygyrojerk.std.y: standard deviation of Jerk signals obtained from the body's angular velocity in direction Y. Its range is from -1 to 1.
-   tbodygyrojerk.std.z: standard deviation of Jerk signals obtained from the body's angular velocity in direction Z. Its range is from -1 to 1.
-   tbodyaccmag.mean: mean magnitude of the body's acceleration. Its range is from -1 to 1.
-   tbodyaccmag.std: standard deviation of the magnitude of the body's acceleration. Its range is from -1 to 1.
-   tgravityaccmag.mean: mean magnitude of the gravity's acceleration. Its range is from -1 to 1.
-   tgravityaccmag.std: standard deviation of the magnitude of the gravity's acceleration. Its range is from -1 to 1.
-   tbodyaccjerkmag.mean: mean magnitude of the Jerk signals obtained from the body's acceleration. Its range is from -1 to 1.
-   tbodyaccjerkmag.std: standard deviation magnitude of the Jerk signals obtained from the body's acceleration. Its range is from -1 to 1.
-   tbodygyromag.mean: mean magnitude of the gravity's angular velocity. Its range is from -1 to 1.
-   tbodygyromag.std: standard deviation of the magnitude of the gravity's angular velocity. Its range is from -1 to 1.
-   tbodygyrojerkmag.mean: mean magnitude of the Jerk signals obtained from the body's angular velocity. Its range is from -1 to 1.
-   tbodygyrojerkmag.std: standard deviation of magnitude of the Jerk signals obtained from the body's angular velocity. Its range is from -1 to 1.

#### Data transformed using Fast Fourier Transform (FTT) method 
-   fbodyacc.mean.x: mean transformed acceleration (FTT) of the body in direction X. Its range is from -1 to 1.
-   fbodyacc.mean.y: mean transformed acceleration (FTT) of the body in direction Y. Its range is from -1 to 1.
-   fbodyacc.mean.z: mean transformed acceleration (FTT) of the body in direction Z. Its range is from -1 to 1.
-   fbodyacc.std.x: standard deviation of the transformed acceleration (FTT) of the body in direction X. Its range is from -1 to 1.
-   fbodyacc.std.y: standard deviation of the transformed acceleration (FTT) of the body in direction Y. Its range is from -1 to 1.
-   fbodyacc.std.z: standard deviation of the transformed acceleration (FTT) of the body in direction Z. Its range is from -1 to 1.
-   fbodyaccjerk.mean.x: mean of Jerk signals obtained from the body's transformed acceleration (FTT) in direction X. Its range is from -1 to 1.
-   fbodyaccjerk.mean.y: mean of Jerk signals obtained from the body's transformed acceleration (FTT) in direction Y. Its range is from -1 to 1.
-   fbodyaccjerk.mean.z: mean of Jerk signals obtained from the body's transformed acceleration (FTT) in direction Z. Its range is from -1 to 1.
-   fbodyaccjerk.std.x: standard deviation of Jerk signals obtained from the body's transformed acceleration (FTT) in direction X. Its range is from -1 to 1.
-   fbodyaccjerk.std.y: standard deviation of Jerk signals obtained from the body's transformed acceleration (FTT) in direction X. Its range is from -1 to 1.
-   fbodyaccjerk.std.z: standard deviation of Jerk signals obtained from the body's transformed acceleration (FTT) in direction X. Its range is from -1 to 1.
-   fbodygyro.mean.x: mean transformed angular velocity (FTT) of the body in direction X. Its range is from -1 to 1.
-   fbodygyro.mean.y: mean transformed angular velocity (FTT) of the body in direction Y. Its range is from -1 to 1.
-   fbodygyro.mean.z: mean transformed angular velocity (FTT) of the body in direction Z. Its range is from -1 to 1.
-   fbodygyro.std.x: standard deviation of transformed angular velocity (FTT) of the body in direction X. Its range is from -1 to 1.
-   fbodygyro.std.y: standard deviation of transformed angular velocity (FTT) of the body in direction Y. Its range is from -1 to 1.
-   fbodygyro.std.z: standard deviation of transformed angular velocity (FTT) of the body in direction Z. Its range is from -1 to 1.
-   fbodyaccmag.mean: mean magnitude of the body's transformed acceleration (FTT). Its range is from -1 to 1.
-   fbodyaccmag.std: standard deviation of the magnitude of the body's transformed acceleration (FTT). Its range is from -1 to 1.
-   fbodybodyaccjerkmag.mean: mean magnitude of the transformed Jerk signals obtained from the body's acceleration. Its range is from -1 to 1.
-   fbodybodyaccjerkmag.std: standard deviation of the magnitude of the transformed Jerk signals obtained from the body's acceleration. Its range is from -1 to 1.
-   fbodybodygyromag.mean: mean magnitude of the transformed angular velocity. Its range is from -1 to 1.
-   fbodybodygyromag.std: standard deviation of magnitude of the transformed angular velocity. Its range is from -1 to 1.
-   fbodybodygyrojerkmag.mean: mean magnitude of the transformed Jerk signals obtained from the angular velocity. Its range is from -1 to 1.
-   fbodybodygyrojerkmag.std: standard deviation of magnitude of the transformed Jerk signals obtained from the angular velocity. Its range is from -1 to 1.
