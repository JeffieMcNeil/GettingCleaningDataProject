# Code Book for Samsung Galaxy SII smartphone accelerometer data
Jeffie McNeil  
22-Oct-2015  

## Project Description

This is the course project for Coursera's Getting and Cleaning Data course. It uses a publically available dataset on accelerometer and gyroscope data collected from 30 subjects conducting a series of activities while wearing the smartphone Samsung Galaxy SII (Davide et al. 2013). The purpose of this project is to prepare a tidy data set of the averages of the mean and standard deviation measurements from the existing raw dataset. The resulting data file adheres to the principles of tidy data outlined in (Wickham 2014) and is ready for future analysis.


####Collection of the raw data

Raw data for this project was obtained from [this link]("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip") and were downloaded into the working directory.
    
A full description of the raw dataset is available [here]("http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones")
    
####Guide to creating the tidy data file
The tidy data file, **SamsgungTidyMeans.txt** was created from the provided multi-file dataset labelled **UCI HAR Dataset**. To create this file, the provided R script, **run_analysis.R** performs several tasks including consolodating the files into a single dataframe, adding descriptive variable names and activity labels and calculating the means for each unique subject and activity combination. More details on steps to create the tidy data file are outlined in **README.md** file and are explained within the provided R script.
 
To load the tidy data file in R, use the following code `>dfname<-read.table("SamsungTidyMeans.txt", header=TRUE)`

And to view in the preview window use `>View(dfname)` 

##Description of the variables in the tiny_data.txt file
The file SamsungTidyMeans.txt is a 220KB file that contains 180 rows of 68 variables and a header row of variable names. 


####**subjectid** (integer)     
The code of the subject doing the test. Contains integers 1 to 30, each representing an individual person.   
    
####**activity** (factor variable with 6 levels)
The activity the subject was undertaking at the time of the measurement. Each subject undertook the following 6 activities:   
    - walking    
    - upstairswalking  
    - downstairswalking  
    - sitting  
    - standing   
    - laying  

#### **mean measurements** (columns 3:68, num)

These represent the mean of each of the mean and standard deviation values of the measurements for each subject and activity.  Each variable name has 4-5 descriptors: 

1 *Type of signal -*time, freq (frequency)  
    
2 *Signal -* body, gravity 

3 *Measure -* gyroscope, gyroscopejerk, gyroscopemag, gyroscopejerkmag,     accellerometer, accellerometerjerk, accellerometermag, accellerometerjerkmag      

4 *Calculation-* mean, std (standard deviation) 

5 *Axis-* x,y,z (if applicable)  
   

    
Descriptors are separated by a period(.), as recommended by [Google Sytle Guide]("https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml"). See  **README.md** for more informaton on variable naming choices. Some abbreviations were used to enhance readability and keep the column names from becoming too unweildy in length.  

The acceleration signal from the smartphone accelerometer x, y or z axis are measured in **standard gravity units 'g'**.  The body acceleration signal is obtained by subtracting the gravity from the total acceleration. The angular velocity vector measured by the gyroscope measured in **radians/second**. 

More details on the variables and how they were measured are found in the file **features_info.txt** that is included with the downloaded **UCI HAR dataset**.


#### List of all variable names

NEW VARIABLE NAME  | ORIGINAL VARIABLE NAME
------------- | -------------
time.body.accelerometer.mean.x|tBodyAcc-mean()-X
time.body.accelerometer.mean.y|tBodyAcc-mean()-Y
time.body.accelerometer.mean.z|tBodyAcc-mean()-Z
time.gravity.accelerometer.mean.x|tGravityAcc-mean()-X
time.gravity.accelerometer.mean.y|tGravityAcc-mean()-Y
time.gravity.accelerometer.mean.z|tGravityAcc-mean()-Z
time.body.accelerometerjerk.mean.x|tBodyAccJerk-mean()-X
time.body.accelerometerjerk.mean.y|tBodyAccJerk-mean()-Y
time.body.accelerometerjerk.mean.z|tBodyAccJerk-mean()-Z
time.body.gyroscope.mean.x|tBodyGyro-mean()-X
time.body.gyroscope.mean.y|tBodyGyro-mean()-Y
time.body.gyroscope.mean.z|tBodyGyro-mean()-Z
time.body.gyroscopejerk.mean.x|tBodyGyroJerk-mean()-X
time.body.gyroscopejerk.mean.y|tBodyGyroJerk-mean()-Y
time.body.gyroscopejerk.mean.z|tBodyGyroJerk-mean()-Z
time.body.accelerometermag.mean|tBodyAccMag-mean()
time.gravity.accelerometermag.mean|tGravityAccMag-mean()
time.body.accelerometerjerkmag.mean|tBodyAccJerkMag-mean()
time.body.gyroscopemag.mean|tBodyGyroMag-mean()
time.body.gyroscopejerkmag.mean|tBodyGyroJerkMag-mean()
freq.body.accelerometer.mean.x|fBodyAcc-mean()-X
freq.body.accelerometer.mean.y|fBodyAcc-mean()-Y
freq.body.accelerometer.mean.z|fBodyAcc-mean()-Z
freq.body.accelerometerjerk.mean.x|fBodyAccJerk-mean()-X
freq.body.accelerometerjerk.mean.y|fBodyAccJerk-mean()-Y
freq.body.accelerometerjerk.mean.z|fBodyAccJerk-mean()-Z
freq.body.gyroscope.mean.x|fBodyGyro-mean()-X
freq.body.gyroscope.mean.y|fBodyGyro-mean()-Y
freq.body.gyroscope.mean.z|fBodyGyro-mean()-Z
freq.body.accelerometermag.mean|fBodyAccMag-mean()
freq.body.accelerometerjerkmag.mean|fBodyBodyAccJerkMag-mean()
freq.body.gyroscopemag.mean|fBodyBodyGyroMag-mean()
freq.body.gyroscopejerkmag.mean|fBodyBodyGyroJerkMag-mean()
time.body.accelerometer.std.x|tBodyAcc-std()-X
time.body.accelerometer.std.y|tBodyAcc-std()-Y
time.body.accelerometer.std.z|tBodyAcc-std()-Z
time.gravity.accelerometer.std.x|tGravityAcc-std()-X
time.gravity.accelerometer.std.y|tGravityAcc-std()-Y
time.gravity.accelerometer.std.z|tGravityAcc-std()-Z
time.body.accelerometerjerk.std.x|tBodyAccJerk-std()-X
time.body.accelerometerjerk.std.y|tBodyAccJerk-std()-Y
time.body.accelerometerjerk.std.z|tBodyAccJerk-std()-Z
time.body.gyroscope.std.x|tBodyGyro-std()-X
time.body.gyroscope.std.y|tBodyGyro-std()-Y
time.body.gyroscope.std.z|tBodyGyro-std()-Z
time.body.gyroscopejerk.std.x|tBodyGyroJerk-std()-X
time.body.gyroscopejerk.std.y|tBodyGyroJerk-std()-Y
time.body.gyroscopejerk.std.z|tBodyGyroJerk-std()-Z
time.body.accelerometermag.std|tBodyAccMag-std()
time.gravity.accelerometermag.std|tGravityAccMag-std()
time.body.accelerometerjerkmag.std|tBodyAccJerkMag-std()
time.body.gyroscopemag.std|tBodyGyroMag-std()
time.body.gyroscopejerkmag.std|tBodyGyroJerkMag-std()
freq.body.accelerometer.std.x|fBodyAcc-std()-X
freq.body.accelerometer.std.y|fBodyAcc-std()-Y
freq.body.accelerometer.std.z|fBodyAcc-std()-Z
freq.body.accelerometerjerk.std.x|fBodyAccJerk-std()-X
freq.body.accelerometerjerk.std.y|fBodyAccJerk-std()-Y
freq.body.accelerometerjerk.std.z|fBodyAccJerk-std()-Z
freq.body.gyroscope.std.x|fBodyGyro-std()-X
freq.body.gyroscope.std.y|fBodyGyro-std()-Y
freq.body.gyroscope.std.z|fBodyGyro-std()-Z
freq.body.accelerometermag.std|fBodyAccMag-std()
freq.body.accelerometerjerkmag.std|fBodyBodyAccJerkMag-std()
freq.body.gyroscopemag.std|fBodyBodyGyroMag-std()
freq.body.gyroscopejerkmag.std|fBodyBodyGyroJerkMag-std()


##Sources
Anguita Davide, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 2013. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

Baath, Rasmus. 2012.The state of naming conventions in R. The R Journal 4(2): 74:75

Wickham, Hadley. 2014. Tidy Data. Journal of Statistical Software 59(10):1:23.

Google's R Style Guide: https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml


