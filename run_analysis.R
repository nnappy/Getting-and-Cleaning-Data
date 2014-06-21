# This script reads in two sets of raw data (test and train sets) and transforms 
# them into one "tidy data" set to facilitate data analysis.  Each set measures 
# the same set of variables, only the subjects being measured differs bewtween 
# the two sets.  Please see codebook and readme for more information.

# read in test data and combine into one data frame
xtestdata <- read.table("./UCI HAR Dataset/test/x_test.txt")
ytestdata <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testdata <- cbind(subjecttest, ytestdata, xtestdata)

# read in train data and combine into one data frame
xtraindata <- read.table("./UCI HAR Dataset/train/x_train.txt")
ytraindata <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
traindata <- cbind(subjecttrain, ytraindata, xtraindata)

# combine test and train data frames into one
alldata <- rbind(testdata, traindata)

# read in features data which is complete list of variables measured
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors 
                       = FALSE)

# read in activity labels which identify activity performed by subject
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names 
                             = c("activityid", "activity"), stringsAsFactors 
                             = FALSE)

# creates vector with two names for data columns
variablenames <- c("subjectid", "activityid")

# cast to data frame
variablenames <- data.frame(1:2, variablenames) 

# create generic column names so columns can be binded in next step
# couldn't get them to bind without this step
names(variablenames) <- c("V1", "V2") 

# create "master" data frame of all variable names
variablenames <- rbind(variablenames, features)
# cast variables to characters
variablenames <- as.character(variablenames$V2) 
# convert variable names to lower case
variablenames <- tolower(variablenames)  
# remove punctuation from variable names
variablenames <- gsub("[[:punct:]]", "", variablenames)
# apply "cleaned" variable names to master data set
names(alldata) <- variablenames

# create index of all variables pertaining to mean/standard deviation
# while ignoring subjectid and activityid variables which are identifiers
variableindex <- grep("subjectid|activityid|mean|std", variablenames)
alldata <- alldata[,variableindex]

# apply activity labels by merging the "master" data set with the 
# activitylabel set
mergeddata <- merge(activitylabels, alldata, by = "activityid")
mergeddata <- mergeddata[order(mergeddata$subjectid, mergeddata$activityid, 
                               mergeddata$activity),]

# drop column of activityid which is no longer needed now that merge has
# allowed us to apply the activity label names
mergeddata$activityid <- NULL
# reorder the data so subjectid is first column, activity label is second,
# variables follow, etc
mergeddata <- mergeddata[,c(2,1,3:88)]

# these functions are used to reshape the data to get final "tidy data" set
# containing 180 rows (30 subjects x 6 activity) with the mean of each
# variable for each subject and each activity
library(reshape2)
melteddata <- melt(mergeddata, id = c("subjectid", "activity"))
tidydata <- dcast(melteddata, subjectid + activity ~ variable, mean)
write.table(tidydata, file = "tidydata.txt")