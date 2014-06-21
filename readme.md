### run_analysis.R
===============================================================================
-------------------------------------------------------------------------------
#### What is it?
-------------------------------------------------------------------------------
run_analysis.R is a script written in the R programming language that takes 
data from the Human Activity Recognition Using Smartphones Data set Version 1.0 
and transforms it into a "tidy data" set to facilitate further data analysis.  
The script reads in data from several files, reorganizes it into a single raw 
data set, applies variable names, selects only the variables with mean and 
standard deviation measurements and outputs a final "tidy data" set in text 
format with 180 rows of data and 88 columns. This final independent set 
includes an average of each variable for each activity and each subject in the 
study. A description of all variables can be found in the codebook located in 
the same github repository in which this readme was found.

The script was written for the course project in Coursera's June 2014 iteration 
of the Getting and Cleaning Data course in the Data Science Specialization.  For 
further information on the course or Data Science Specialization please visit 
https://www.coursera.org/specialization/jhudatascience/1?utm_medium=listingPage

-------------------------------------------------------------------------------
#### Version
-------------------------------------------------------------------------------
The script was written and tested in R x64 Version 3.1.0 (2014-04-10) -- 
"Spring Dance" on Windows 7.

-------------------------------------------------------------------------------
#### Dataset
-------------------------------------------------------------------------------
The Human Activity Recognition Using Smartphones Dataset and information 
regarding the dataset can be found online at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

-------------------------------------------------------------------------------
#### Script Execution
-------------------------------------------------------------------------------
The "UCI HAR Dataset" from the link in the "Dataset" section of this readme 
must be downloaded and unzipped into the R working directory for the 
run_analysis.R script for work properly.

-------------------------------------------------------------------------------
#### Contact Information
-------------------------------------------------------------------------------
For any additional information regarding the run_analysis.R script please 
email nnappy@gmail.com

For information regarding the original data set please see information at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#