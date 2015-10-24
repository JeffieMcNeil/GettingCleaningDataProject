## Check for and load the libraries used in this script

if(!require(plyr)){
    install.packages("plyr")
    library(plyr)
}
if(!require(dplyr)){
    install.packages("dplyr")
    library(dplyr)
}
if(!require(tidyr)){
    install.packages("tidyr")
    library(tidyr)
}


## Read each file and assign it to an object

xtest<-read.table("./UCI HAR Dataset/test/x_test.txt")
xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt")
activitytest<-read.table("./UCI HAR Dataset/test/y_test.txt")
activitytrain<-read.table("./UCI HAR Dataset/train/y_train.txt")
subjecttest<-read.table("./UCI HAR Dataset/test/subject_test.txt")
subjectrain<-read.table("./UCI HAR Dataset/train/subject_train.txt")
variablenames<-read.table("./UCI HAR Dataset/features.txt")

## Join the subject, activity and x data for both test and training datsets
## and then combine into one dataframe 

xtest<-cbind(subjecttest, activitytest, xtest)
xtrain<-cbind(subjectrain, activitytrain, xtrain)
combined<-rbind(xtest,xtrain)

## Label the cominbed dataset with unique variable names

labels<-as.character(variablenames$V2)
labels<-tolower(labels)
names(combined)<-c("subjectid", "activity",make.unique(labels)) 

## Filter to the desired columns

samsungtidy<-select(combined, subjectid, activity, contains("mean()"),
                         contains("std()"))

## Remove extraenous objects from memory

rm(list="activitytest", "activitytrain", "subjectrain", "subjecttest", 
   "variablenames", "xtest", "xtrain", "labels", "combined")

## Switch activity codes to descriptive activity names

samsungtidy$activity[samsungtidy$activity==1] <- "walking"
samsungtidy$activity[samsungtidy$activity==2] <- "upstairswalking"
samsungtidy$activity[samsungtidy$activity==3] <- "downstairswalking"
samsungtidy$activity[samsungtidy$activity==4] <- "sitting"
samsungtidy$activity[samsungtidy$activity==5] <- "standing"
samsungtidy$activity[samsungtidy$activity==6] <- "laying"

## Fix descriptive variable names

labels<-names(samsungtidy)
labels<-gsub("mean()","mean.",labels)
labels<-gsub("std()","std.",labels)
labels2<-sub("t", "time.", labels[3:55])
labels<-c(labels[1:2], labels2, labels[56:68])
labels<-sub("f", "freq.",labels)
labels<-sub("bodybody", "body",labels)
labels<-sub("body", "body.", labels)
labels<-gsub("\\)","",labels)
labels<-gsub("\\(","",labels)
labels<-gsub("\\-","", labels)
labels<-gsub("acc", "accelerometer.",labels)
labels<-gsub("gyro", "gyroscope.",labels)
labels<-gsub("gravity", "gravity.",labels)
labels<-gsub(".jerkmean", "jerk.mean",labels)
labels<-gsub(".jerkmagmean.", "jerkmag.mean",labels)
labels<-gsub(".magstd.", "mag.std",labels)
labels<-gsub(".magmean.", "mag.mean",labels)
labels<-gsub(".jerkstd.", "jerk.std",labels)
labels<-gsub(".stdx", ".std.x",labels)
labels<-gsub(".stdy", ".std.y",labels)
labels<-gsub(".stdz", ".std.z",labels)
labels<-gsub(".jermag.", "jerkmag.",labels)
names(samsungtidy)<-labels
rm(list="labels", "labels2")


## Group by subject and activity and compute the means for each value

SamsungMeans<-group_by(samsungtidy,subjectid, activity)%>%summarise_each(funs(mean))
rm(samsungtidy)

## Write the complete tidy dataset to a text file and add it to the viewer

write.table(SamsungMeans, file="SamsungTidyMeans.txt", row.names=FALSE)
View(SamsungMeans)


