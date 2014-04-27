##
## Getting and Cleaning Data Peer Assignment
##    -> gets and clean data from folder "UCI HAR Datatset"
##

## 1) Combine test and training data
system('mkdir "UCI HAR Dataset/combined"')
system('mkdir "UCI HAR Dataset/combined/Inertial Signals"')

system('cat "UCI HAR Dataset/train/subject_train.txt" "UCI HAR Dataset/test/subject_test.txt" > "UCI HAR Dataset/combined/subject_test.txt"')
system('cat "UCI HAR Dataset/train/X_train.txt" "UCI HAR Dataset/test/X_test.txt" > "UCI HAR Dataset/combined/X_test.txt"')
system('cat "UCI HAR Dataset/train/y_train.txt" "UCI HAR Dataset/test/y_test.txt" > "UCI HAR Dataset/combined/y_test.txt"')

system('cat "UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt" "UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt" > "UCI HAR Dataset/combined/Inertial Signals/body_acc_x_test.txt"')
system('cat "UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt" "UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt" > "UCI HAR Dataset/combined/Inertial Signals/body_acc_y_test.txt"')
system('cat "UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt" "UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt" > "UCI HAR Dataset/combined/Inertial Signals/body_acc_z_test.txt"')

system('cat "UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt" "UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt" > "UCI HAR Dataset/combined/Inertial Signals/body_gyro_x_test.txt"')
system('cat "UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt" "UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt" > "UCI HAR Dataset/combined/Inertial Signals/body_gyro_y_test.txt"')
system('cat "UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt" "UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt" > "UCI HAR Dataset/combined/Inertial Signals/body_gyro_z_test.txt"')

system('cat "UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt" "UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt" > "UCI HAR Dataset/combined/Inertial Signals/total_acc_x_test.txt"')
system('cat "UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt" "UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt" > "UCI HAR Dataset/combined/Inertial Signals/total_acc_y_test.txt"')
system('cat "UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt" "UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt" > "UCI HAR Dataset/combined/Inertial Signals/total_acc_z_test.txt"')




