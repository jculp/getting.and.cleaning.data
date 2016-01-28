# Getting and Cleaning Data:  Course Project
## Purpose
The purpose of this project is to demonstrate the student's ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. Each student will be required to submit:

1. A tidy data set as described below.
2. A link to a Github repository with your script for performing the analysis.
3. A code book that describes the variables, the data, and any transformations or work that the student performed to clean up the data called CodeBook.md.

Students should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

## Objectives
Students should create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Data processing executed by run_analysis.R
A single script named `run_analysis.R` performs the following steps.

#### 1. Merging the datasets
The R script first downloads the compressed **UCI HAR** activity data and its directory structure to the R working directory.  This zipped file is then extracting using the `unzip()` function, and saved to the selected subdirectory.

Training and testing **observations** are read into R using via `read.table()`, after which the dataset (either training or testing) is identified in a final column.  The training and testing datasets are then merged via `rbind()`.  A file containing the observations' **features** is then read in and assigned to the column names of this merged dataset (`x`).

The **activity codes** associated with each dataset are similarly read into R, merged and named (`y`).

The **subject codes** associated with each dataset are similarly read into R, merged, and named (`subject`).

At this point, the **activity codes** (`y`), **subject codes** (`subject`), and actual **observations** (`x`) are merged together via `cbind()` into the `data` object.

#### 2. Extracting mean and standard deviation measurements
From the combined `data` object, measurements not related to a mean or standard deviation are removed using `grepl()` and indexing.

#### 3. Descriptive activity names
Similar to the initial datasets, a list of descriptive **activity labels** is read into R.  These labels are set to all lower-case using `tolower()` and spaces are replaces with periods using `gsub()`.  The `data` object is then updated with these descriptive activity labels based on the activity code from `y`.

#### 4. Descriptive variable names
The headers of the `data` object are then cleaned with `tolower()`, similar to the activity labels earlier.  In addition, parentheses are removed and hyphens are replaced with periods, again with `gsub()`.

#### 5. Tidy dataset
Finally, by utilizing `group_by()` and `summarize_each()` from the `tidyr` package, a final dataset is created as the `data.tidy` object.  Each row in this dataset represents a unique combination of activy and subject.  For each unique combination, the means of all mean or standard deviation measurements are provided.
