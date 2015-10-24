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
 
To load the tidy data file in R, use the following code `>dfname<-read.table("SamsungTidyMeans.txt", header=TRUE)

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

These represent the mean of each of the mean and standard deviation values of the measurements for each subject and activity.  Each variable name has 5 descriptors, separated by a period(.), as recommended by [Google Sytle Guide]("https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml"). See  **README.md** for more informaton on variable naming choices. Some abbreviations were used to enhance readability and keep the column names from becoming unweildy length.

Desciptors:  

*Type of signal -*(time, freq (Frequency))  
    
*Signal -* (body, gravity) 

*Measure -* (gyroscope, gyroscopejerk, gyroscopemag, gyroscopejerkmag, accellerometer, accellerometerjerk, accellerometermag, accellerometerjerkmag)       

*Dimension-* (x,y,z)
   
*Calculation-* (mean, std (standard deviation))
    

The acceleration signal from the smartphone accelerometer x, y or z axis are measured in standard gravity units 'g'.  The body acceleration signal is obtained by subtracting the gravity from the total acceleration. The angular velocity vector measured by the gyroscope measured in radians/second. 

More details on the variables and how they were measured are found in the file **features_info.txt** that is included with the downloaded **UCI HAR dataset**.


#### List of all variable names
subjectid  
activity  
time.body.accelerometer.mean.x  
time.body.accelerometer.mean.y  
time.body.accelerometer.mean.z  
time.gravity.accelerometer.mean.x  
time.gravity.accelerometer.mean.y  
time.gravity.accelerometer.mean.z  
time.body.accelerometerjerk.mean.x  
time.body.accelerometerjerk.mean.y    
time.body.accelerometerjerk.mean.z   
time.body.gyroscope.mean.x  
time.body.gyroscope.mean.y  
time.body.gyroscope.mean.z  
time.body.gyroscopejerk.mean.x  
time.body.gyroscopejerk.mean.y  
time.body.gyroscopejerk.mean.z  
time.body.accelerometermag.mean  
time.gravity.accelerometermag.mean  
time.body.accelerometerjerkmag.mean  
time.body.gyroscopemag.mean  
time.body.gyroscopejerkmag.mean  
freq.body.accelerometer.mean.x  
freq.body.accelerometer.mean.y  
freq.body.accelerometer.mean.z  
freq.body.accelerometerjerk.mean.x  
freq.body.accelerometerjerk.mean.y  
freq.body.accelerometerjerk.mean.z  
freq.body.gyroscope.mean.x  
freq.body.gyroscope.mean.y  
freq.body.gyroscope.mean.z  
freq.body.accelerometermag.mean  
freq.body.accelerometerjerkmag.mean  
freq.body.gyroscopemag.mean  
freq.body.gyroscopejerkmag.mean  
time.body.accelerometer.std.x  
time.body.accelerometer.std.y  
time.body.accelerometer.std.z  
time.gravity.accelerometer.std.x  
time.gravity.accelerometer.std.y  
time.gravity.accelerometer.std.z  
time.body.accelerometerjerk.std.x  
time.body.accelerometerjerk.std.y  
time.body.accelerometerjerk.std.z  
time.body.gyroscope.std.x  
time.body.gyroscope.std.y  
time.body.gyroscope.std.z  
time.body.gyroscopejerk.std.x  
time.body.gyroscopejerk.std.y  
time.body.gyroscopejerk.std.z  
time.body.accelerometermag.std  
time.gravity.accelerometermag.std  
time.body.accelerometerjerkmag.std  
time.body.gyroscopemag.std  
time.body.gyroscopejerkmag.std  
freq.body.accelerometer.std.x  
freq.body.accelerometer.std.y  
freq.body.accelerometer.std.z  
freq.body.accelerometerjerk.std.x  
freq.body.accelerometerjerk.std.y  
freq.body.accelerometerjerk.std.z  
freq.body.gyroscope.std.x  
freq.body.gyroscope.std.y  
freq.body.gyroscope.std.z  
freq.body.accelerometermag.std  
freq.body.accelerometerjerkmag.std  
freq.body.gyroscopemag.std  
freq.body.gyroscopejerkmag.std  


##Sources
Anguita Davide, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 2013. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

Baath, Rasmus. 2012.The state of naming conventions in R. The R Journal 4(2): 74:75

Wickham, Hadley. 2014. Tidy Data. Journal of Statistical Software 59(10):1:23.

Google's R Style Guide: https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml


