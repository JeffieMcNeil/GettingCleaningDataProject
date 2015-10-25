# Getting and Cleaning Data Project

Course project for Coursera's Getting and Cleaning Data course

## Run the R script (run_analysis.R) to generate the tidy data file

* Prior to running the R script, please ensure that you have downloaded the project dataset and unzipped it into your working directory. The file and folder structure and names should remain the same as downloaded.   
    
* The R script requires the packages tidyr, plyr and dplyr. If you have not installed these packages, it is best that you do so before running the script. The script contains code to install the packages for you, but depending on your system configuration, you may enounter errors or warnings if relying on the script to install them.       
    
## Explanation of the run_analysis.R script

This script performs several tasks to take the given multifile dataset, consolidate it into a single file with descriptive file names and generate a new file called **SamsungTidyMeans.txt**. In order, the basic tasks are:


1. Check for the packages used in this script (plyr, dplyr and tidyr) and load them into the library. 

2. Read each file and assign it into an object.Files used are:      
    *   x_test.txt (test dataset)  
    *   x_train.txt (training dataset)  
    *   y_test.txt (activities for test dataset)  
    *   y_train.txt (activities for training datset)  
    *   subject_test.txt (subject codes for test dataset)  
    *   subject_train.txt (subject codes for training dataset)  
    *   features.txt (variable names for test and training dataset)  

3. Join the subject, activity and x data for both test and training datsets and then combine into one dataframe.  

4. Label the combined dataset with unique variable name following those decribed in the **features.txt** file.  

5. Remove extraenous objects from memory. 

6. Rename activity codes to descriptive activity names as described in the **activity_labels.txt** file.  

7. Fix descriptive variable names. This code conducts a series of subtitutions to a) clean the file names from errors present in the original file b) expand the abbreviations and c) separate the 5 main descriptor types with dots (see more on this below)

8. Group by subject and activity and compute the means for each value using the group_by and summarise functions.  

9. Write the complete tidy dataset to a text file in the working directory and add it to the viewer.


## The tidy data file
The output file, **SamsungTidyMeans.txt** is written to the working directory. It can be read back into R using the following code:

`> tidydf<-read.table("SamsungTidyMeans.txt", header=TRUE)`

And viewed in the preview window using: 

`> View(tidaydf)`

This file is presented in the **wide format** (one of the two options for the project) and has 180 observations of 68 variables.

## Choice of descriptive variable names

The course project required that we "appropriately labels the data set with descriptive variable names" but the meaning of this could be interpreted in many ways. Material presented in the class suggested that variable names should be lower case, written out rather than abbreviated, and not separated by special characters such as dots, underscores or dashes. However, variable names in this project are very complex and following the guidelines 'as is' resulted in variable names that were difficult to read. Because of this I decided to go with descriptors separated by dots (.) to increase the readability of the names. 

Separating variable names by periods is the preferred method recommended by [**Google's R Style Guide**](https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml). This method is fairly common; over 80% of parameter names on CRAN were found to be using period separated names (Baath 2012*).  As per the [recommendation of one of the community TAs](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/), no attempt was made to decompose the variable names as this would result in NAs and may be more confusing to the reviewer.

Baath, R. 2012. The State of Naming Conventions in R. The R Journal 4(2): 74:75.

## Additional information
The tidy dataset **SamsungTidyMeans.txt** has been included in this repo incase there is any issue with the upload to the course project.
