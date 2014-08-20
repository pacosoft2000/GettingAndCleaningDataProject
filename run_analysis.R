activites_labels <- read.table("activity_labels.txt", sep = "")
features_labels <- read.table("features.txt", sep = "")

#Merges the training and the test sets to create one data set.
Xtrain<-read.table("./train/X_train.txt",sep="")
Ytrain<-read.table("./train/y_train.txt",sep="") # activites
Strain<-read.table("./train/subject_train.txt",sep="") # subjects
train<-cbind(Strain, Ytrain, Xtrain)
Xtest<-read.table("./test/X_test.txt",sep="")
Ytest<-read.table("./test/y_test.txt",sep="") # activites
Stest<-read.table("./test/subject_test.txt",sep="") # subjects
test<-cbind(Stest, Ytest, Xtest)
X<-rbind(train,test)

#Appropriately labels the data set with descriptive variable names. 
names(X) <-c("Subject","Activity",as.character(features_labels$V2))
levels(X$Activity) <- as.character(activites_labels$V2)

# Extracts only the measurements on the mean and standard deviation for each measurement. 
indexes<-sort(c( grep(".*std().*",names(X)), grep(".*mean().*",names(X))))
selected<-names(X)[indexes]

# create new column ActivityBySubject with format "Activity Name.Subject"
X$Activity <- activites_labels$V2[X$Activity]
X$ActivityBySubject<-paste(X$Activity,X$Subject,sep=".")

# subset dataset
X<-X[,c("ActivityBySubject",selected)]

#Creates a second, independent tidy data set with the 
#average of each variable for each activity and each subject. 
#install.packages("reshape2") # only if necessary
library(reshape2)
X2<-melt(X,id=c("ActivityBySubject"),measure_vars = selected )
X3<-dcast(X2, ActivityBySubject   ~ variable  , mean, var.value="value" )
write.table(X3,file="tidyData.txt", row.name=FALSE)


