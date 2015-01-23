# Codebook 

1. Data source :[Human Activity Recognition Using Smartphones Dataset] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

2. To create a tidy data set, we first extract the measurements on the mean and standard deviation for each measurement, and 
further reduce our data set such that only the measurements in time domian are contained. We made this choice because these
time domain data are most relevant and relatively less manipulated data, compared to the data in frequency domain.

3. Then we assign subject names and activities to each observation and rename our variables with CamelCase convention.

4. Finally, we calculate the average of each variable for each activity and each subject as required. 

5. Export desired tidy data set as a txt file.

*Appendix: variable rules*



