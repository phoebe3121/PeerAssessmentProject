### The file describes how the script file "run_analysis.R" works

* Clean the working space in R. Set the working directory to where the UCI HAR Dataset is

* Read the training data. 
	*Set the working directory to where the training data is stored. Read the data into R. Training data are store in 3 separate .txt files. One stores the features variables, one stores the y variable/the label, one stores the subject number.

* Read the test data. 
	*Set the working directory to where the test data is stored. Read the data into R. Test data are store in 3 separate .txt files. One stores the features variables, one stores the y variable/the label, one stores the subject number.

* Extract only the mean() and std() features.
	* Activity names is stored in activity_labels.txt. Feature names is store in features.txt. Read these two files into R.
	* Extract features whose names has either mean() or std() in it. Names the features, and label the y variables using activity names.

* Merge data into one big dataset
	*Form the training dataset including features, labels and subjects
	*Form the testing dataset including features, labels and subjects
	*Append testing dataset to training dataset to form a big dataset.

* Form a tidy dataset

