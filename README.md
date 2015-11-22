## Short comments on what the .R script does.
<br />
This script uses the data from here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones in the following way. 
<br />

1) Reads data sets from 'train' and 'test' folders using the 'read.csv'. Filters out only the mean and standard deviation of the measurements.<br />
2) Combines data sets 'X_train', 'y_train' and 'subject_train' with the respective data sets from the 'test' folder using the 'rbind' command, getting the three data bases (x, y, subject) as a result.<br />
3) Uses the command 'cbind' to merge the three data sets into one.<br />
4) Renames variables to match the file 'features.txt' with the 'names' command.<br />
5) Adds descriptive labels to activities using the 'factor' command.<br />
6) Aggregates the data to get the average measurements for each subject and activity with the 'aggregate' command.<br />
7) Writes the data to the database using 'write.table' command.<br />
