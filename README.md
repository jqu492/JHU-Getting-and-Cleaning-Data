README

This is for the Coursera JHU course "Getting and Cleaning Data" final project.
In this repo, you will find the following files:
run_analysis.R
CodeBook.md
README.md

The script run_analysis.R will download the appropriate data (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extract the .zip folder. The script will take care of reading in data, merge tables, label variables,extract tables, and calcuating means. The end result of this script will yield a data table named average_table, which consists 180 observations of 81 variables. It contains the mean of each variable per activity per group. For details and meanings of the variables as well as the significance of the data, refer to CodeBook.md. 