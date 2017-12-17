## Course project solution

The repository contains my solution for the Getting and cleaning data course on Coursera.

### The goal of the project
The goal of the project is a tidy dataset created from a set of datafiles and the corresponding R script.

### About the result
+ In the output dataset the train and test data are in the same data frame. 
+ Each measured data forms a column which its own name.
+ Each observation is in a separate row (indexed by the subject and the activity). 
+ The data of the two datasets are copied by row into the result (like one is copied below the other). The rows of the different datasets are marked for easier separation later. I choose this option because the two separate data sets are from the same experiment only flagged to be "test" or "train" data. This way all the measured values can be analysed both together or separate.

### Files in the repository:
* CodeBook.md: list and description of the variables in the output
* run_analisys.R: script to create a tidy data set from data collected from mobile phone accelerometers and gyroscopes (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* output.txt: the result of running the script; contains the means of each measured variable for each activity and subject pairs  
```{r}
# to read back, use ths code
data <- read.table("output.txt", header=TRUE)
View(data)
```
* README.md: this file :)

### Assumptions for running the script in R
* dplyr package is installed
* the user has read and write rights in his/her current working directory
* the user has a working Internet connection



