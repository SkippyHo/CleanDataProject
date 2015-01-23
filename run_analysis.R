## Step1
features_data <- read.table("./UCI HAR Dataset/features.txt") ## dictionary for mesurements statistics
features <- features_data[,2]

subject_test_data <- read.table("./UCI HAR Dataset/test/subject_test.txt") 
X_test_data <- read.table("./UCI HAR Dataset/test/X_test.txt") ## whole data
Y_test_data <- read.table("./UCI HAR Dataset/test/Y_test.txt") ## dictionary for mesurements
colnames(X_test_data) <- make.names(features,unique=TRUE)
X_test_data <- cbind(Y_test_data,X_test_data)
colnames(X_test_data)[1] <- "activity"
X_test_data <- cbind(subject_test_data,X_test_data)
colnames(X_test_data)[1] <- "subject"


subject_train_data <- read.table("./UCI HAR Dataset/train/subject_train.txt") 
X_train_data <- read.table("./UCI HAR Dataset/train/X_train.txt") ## whole data
Y_train_data <- read.table("./UCI HAR Dataset/train/Y_train.txt") ## dictionary for mesurements
colnames(X_train_data) <- make.names(features,unique=TRUE)
X_train_data <- cbind(Y_train_data,X_train_data)
colnames(X_train_data)[1] <- "activity"
X_train_data <- cbind(subject_train_data,X_train_data)
colnames(X_train_data)[1] <- "subject"

whole_data <-  merge(X_test_data,X_train_data,all=TRUE)

##Step2
library(dplyr)
c<-c(c(1,2),grep("mean",names(whole_data)),grep("std",names(whole_data)))
data2<-select(whole_data,c)
c<-c(c(1,2),grep("tBody",names(data2)))
data2<-select(data2,c)
#mean_data <-select(whole_data,contains("mean"))
#std_data <- select(whole_data,contains("std"))
#sub_act <- whole_data[,1:2]
#data2 <- cbind(sub_act,cbind(mean_data,std_data))

##Step3

data3 <- data2
data3$activity[data3$activity==1] <- "Walking"
data3$activity[data3$activity==2] <- "WalkingUpstairs"
data3$activity[data3$activity==3] <- "WalkingDownstairs"
data3$activity[data3$activity==4] <- "Sitting"
data3$activity[data3$activity==5] <- "Standing"
data3$activity[data3$activity==6] <- "Laying"

data3<- group_by(data3,activity)

#Step4
data4 <- data3
colnames(data4) <- gsub("mean..","mean",colnames(data4))
colnames(data4) <- gsub("std..","std",colnames(data4))

#Step5
data5 <-NULL

for (i in 1:30){
        for (j in 1:6){
                x <- filter(data2,subject==i & activity==j)
                x <- sapply(x[3:length(names(x))],mean)
                data5 <- rbind(data5,x)           
        }        
}
rownames(data5) <- NULL
data5 <- as.data.frame(data5)

data5 <- cbind(rep(1:6,30),data5)
colnames(data5)[1] <- "activity"
data5$activity[data5$activity==1] <- "Walking"
data5$activity[data5$activity==2] <- "WalkingUpstairs"
data5$activity[data5$activity==3] <- "WalkingDownstairs"
data5$activity[data5$activity==4] <- "Sitting"
data5$activity[data5$activity==5] <- "Standing"
data5$activity[data5$activity==6] <- "Laying"
data5 <- cbind(rep(1:30,each=6),data5)
colnames(data5)[1] <- "subject"

write.table(data5, "./mydata.txt", row.names=FALSE,sep="\t")

