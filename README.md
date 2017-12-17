## Course project solution

The repository contains my solution for the Getting and cleaning data course on Coursera.

### The goal of the project
The goal of the project is a tidy data set created from a set of data files and the corresponding R script.

### About the solution
+ There is only one script file (run_analysis.R) which contains all the R codes to receive, tidy and finally summarize the project data.
+ Two output files are generated:  
  ++ output.txt: contains the means of each measured data by subject and activity  
  ++ mean_and_std.txt: contains the cleaned mean and standard deviation data (tidy data without transformation)  
+ In the output data set the train and test data are in the same data frame. 
+ Each measured data forms a column which its own name.
+ Each observation is in a separate row (indexed by the subject and the activity). 
+ The data of the two data sets are copied by row into the result (like one is copied below the other). The rows of the different data sets are marked for easier separation later. I choose this option because the two separate data sets are from the same experiment only flagged to be "test" or "train" data. This way all the measured values can be analysed both together or separate.

### Files in the repository:
* CodeBook.md: list and description of the variables in the output
* run_analysis.R: script to create a tidy data set from data collected from mobile phone accelerometers and gyroscopes (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* output.txt: the final result of running the script; contains the means of each measured variable for each activity and subject pairs  
```{r}
# to read back, use ths code
data <- read.table("output.txt", header=TRUE)
View(data)
```
* mean_and_std.txt: contains the cleaned mean and standard deviation data (tidy data without transformation)
* README.md: this file :)
* HTML files: the HTML counterpart of the markdown files

### Requirements for running the script in R
* dplyr package is installed
* the user has read and write rights in his/her current working directory
* the user has a working Internet connection



