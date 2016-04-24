library(plyr)
#
# combineFiles: combines Subject, X, and Y datasets.
# s: subject file
# x: X file
# y: Y file
#
combineFiles <- function(s,x,y) {
	subject <- read.table(s)
	X <- read.table(x)
	Y <- read.table(y)
	return (cbind(subject,Y,X))
}

#
# Read test and train files and combine them into a single dataframe
#
test <- combineFiles("UCI HAR Dataset\\test\\subject_test.txt","UCI HAR Dataset\\test\\X_test.txt","UCI HAR Dataset\\test\\Y_test.txt")
train <- combineFiles("UCI HAR Dataset\\train\\subject_train.txt","UCI HAR Dataset\\train\\X_train.txt","UCI HAR Dataset\\train\\Y_train.txt")
#
# Combine test and train data frame into one unique data frame.
#
dataset <- rbind(test, train)
#
# Read column names for the X data frame by reading the second column only.
#
X_column_names <- read.table("UCI HAR Dataset\\features.txt",colClasses=c("NULL",NA), col.names=c("id","feature"), header=FALSE)
#
# Set column names for the single dataset
#
colnames(dataset) <- c("subjectid","activityid",as.vector(X_column_names$feature))
#
# Select only std and mean and clean up the column names.
#
a<-dataset[,c("subjectid","activityid",grep("std()|mean()",names(dataset),value=TRUE))]
b<-a[,!grepl("meanFreq",names(a))]
names(b)<-gsub("[-_()]","",names(b))
#
# Take the average of all numeric columns by subject and activity 
#
finaldataset<-ddply(b,.(subjectid, activityid), numcolwise(mean))
#
# Read activity labels from the file and replace it in the final data frame.
#
activity_labels<-read.table("UCI HAR Dataset\\activity_labels.txt",header=FALSE,col.names=c("id","activity"))
finaldataset$activityid<-activity_labels[,2][match(finaldataset$activityid,activity_labels[,1])]

write.table(finaldataset,file="run_analysis_output.txt")
