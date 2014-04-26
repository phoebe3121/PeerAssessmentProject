### The file describes how the script file "run_analysis.R" works

1. load the data to R
* clean the working space in R
* set the working directory to where the UCI HAR Dataset is

* read the training data. 
First set the working directory to where the training data is stored. And read the data into R.
Training data are store in 3 separate .txt files. One stores the features variables, one stores the y variable/the label, one stores the subject number.

* read the test data. 
First set the working directory to where the test data is stored. And read the data into R.
Test data are store in 3 separate .txt files. One stores the features variables, one stores the y variable/the label, one stores the subject number.

* Extract only the mean() and std() features.
Activity names is stored in activity_labels.txt
Feature names is store in features.txt
Read these two files into R.
Extract features whose names has either mean() or std() in it. Names the features, and label the y variables using activity names.

* Merge data into one big dataset
First form the training dataset including features, labels and subjects
Second form the testing dataset including features, labels and subjects
Third append testing dataset to training dataset to form a big dataset.

* Form a tidy dataset

