Getting and Cleaning Data Project
========================================================

This assignment cleans the following dataset 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

***Steps

1.  Combine test and training data  
```
system('mkdir "UCI HAR Dataset/combined"')
system('mkdir "UCI HAR Dataset/combined/Inertial Signals"')
system('cat "UCI HAR Dataset/train/subject_train.txt" "UCI HAR Dataset/test/subject_test.txt" > "UCI HAR Dataset/combined/subject_test.txt"')
system('cat "UCI HAR Dataset/train/X_train.txt" "UCI HAR Dataset/test/X_test.txt" > "UCI HAR Dataset/combined/X_test.txt"')
system('cat "UCI HAR Dataset/train/y_train.txt" "UCI HAR Dataset/test/y_test.txt" > "UCI HAR Dataset/combined/y_test.txt"')
```

2.  Load X_test.txt combined version
```
cset <- read.table(file="UCI HAR Dataset/combined/X_test.txt")
```

3.  Read the features.txt to get column name, use the loaded values to label cset
```
cnames <- read.table('UCI HAR Dataset/features.txt')
colnames(cset) <- cnames[2][[1]]
```

4.  Filter only the columns with '-mean()' or '-std()'
```
cset_mean_only <- cset[,grep('(-mean[(][)])|(-std[(][)])', names(cset))]
```


5.  merge the labels
```
labels <- read.table(file="UCI HAR Dataset/combined/y_test.txt")
label_values <- read.table('~/datascience/ds-003/week3/UCI HAR Dataset/activity_labels.txt')
labels_merged <- merge(labels, label_values, by.x="V1", by.y="V1", all=TRUE)
```

6.  added label to cset
```
cset_mean_only["Activity"] <- labels_merged[2][[1]]
```

7.  add subject
```
subjects <- read.table("UCI HAR Dataset/combined/subject_test.txt")
cset_mean_only["Subjects"] <- subjects[1][[1]]
```

8.  summarize - mean of each variable by subject and activity
```
m <- melt(cset_mean_only, id=c('Subjects','Activity'))
result <- ddply(m, c('Subjects', 'Activity', 'variable'), summarize, mean = mean(value))
```

