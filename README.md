# CleanDataProject
Coursera Project for Getting and Cleaning Data 


In this project, we use the dataset provided by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Oneto (see [this website] (https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) ) to generate a tidy dataset "mydata.txt".


Following the instructions, we managed five steps to reach our final goal. Since we have commented in the run_analysis.R file, we only briefly describe the steps here:

1. First we read both the training and the test sets into R, and merges them to create one new data set called "whole_data". 
2. Then we extract only the measurements on the mean and standard deviation for each measurement, i.e, those variables containing *mean* and *std* in their names.
3. According to the "activity_labels.txt", we follow CamelCase convention to assign descriptive activity names .
4. Similar to step three, we follow CamelCase convention to rename variable names.
5. Finally, we calculate the average of each varialbe for each activity and each subject in data frame created in step four, and create a new dataset called "data5". Then we export this data frame to "mydata.txt".




 

