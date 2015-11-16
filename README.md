## Short comments on what the .R script does.

1) Reads data sets from 'train' and 'test' folders using the 'read.csv'. Filters out only the mean and standard deviation of the measurements.
2) Combines data sets 'X_train', 'y_train' and 'subject_train' with the respective data sets from the 'test' folder using the 'rbind' command, getting the three data bases (x, y, subject) as a result.
3) Uses the command 'cbind' to merge the three data sets into one.
4) Renames variables to match the file 'features.txt' with the 'names' command.
5) Adds descriptive labels to activities using the 'factor' command.
6) Aggregates the data to get the average measurements for each subject and activity with the 'aggregate' command.
7) Writes the data to the database using 'write.table' command.
