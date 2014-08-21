# loading required libraries 
if(!require("downloader")) {
    print("trying to install downloader ")
    install.packages("downloader")
    if(!require("downloader")) {
        stop("could not install package downloader ")
    } 
}

if(!require("reshape2")) {
    print("trying to install reshape2 ")
    install.packages("reshape2")
    if(!require("reshape2")) {
        stop("could not install package reshape2 ")
    } 
}
library(downloader)
library(reshape2)

# download dataset
if (!file.exists("UCI HAR Dataset")) {
    url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
    file <- 'dataset.zip'
    download(url,file)
    unzip(file)
    print("Dataset downloaded")
}
setwd('UCI HAR Dataset/')

# loading and merging datasets
activites_labels <- read.table("activity_labels.txt", sep = "")
features_labels <- read.table("features.txt", sep = "")
Xtrain<-read.table("./train/X_train.txt",sep="")
Ytrain<-read.table("./train/y_train.txt",sep="") # activites
Strain<-read.table("./train/subject_train.txt",sep="") # subjects
train<-cbind(Strain, Ytrain, Xtrain)
Xtest<-read.table("./test/X_test.txt",sep="")
Ytest<-read.table("./test/y_test.txt",sep="") # activites
Stest<-read.table("./test/subject_test.txt",sep="") # subjects
test<-cbind(Stest, Ytest, Xtest)
X<-rbind(train,test)

# Subsetting variables in dataset
names(X) <-c("Subject","Activity",as.character(features_labels$V2))
indexes<-grep("-(mean|std)\\(",names(X))
selected<-names(X)[indexes]
X<-X[,c("Subject","Activity",selected)]

# Tiding variables name
names(X) <- gsub("\\(\\)", "", names(X)) # remove "()"
names(X) <- gsub("mean", "Mean", names(X)) # capitalize M
names(X) <- gsub("std", "Std", names(X)) # capitalize S
names(X) <- gsub("-", "", names(X)) # remove "-" in column names 

# aggregating means in Tidy dataset
tidyX <- aggregate(X, by=list(Activity = X$Activity, Subject = X$Subject), mean)
ncols<-dim(tidyX)[2]
tidyX <- tidyX[,3:ncols]
tidyX$Activity <- activites_labels$V2[tidyX$Activity]

# saving tidy dataset to file
setwd("..")
write.table(tidyX,file="tidyData.txt",row.name=FALSE)

