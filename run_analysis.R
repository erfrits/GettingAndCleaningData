# load libraries
library(dplyr)

# Getting the data
# =================
# create a temporary folder and move the working directory
orig_wd <- getwd()
new_wd <- "work_folder_for_run_analysis"
dir.create(new_wd)
setwd(paste(orig_wd,new_wd, sep = "/"))
# download the data file and unzip it
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","dataset.zip")
unzip("dataset.zip")    # dir: "UCI HAR Dataset"

# Loading data into R
# =====================
# read header of x_test/x_train:
xHeader <- read.table("./UCI HAR Dataset/features.txt")
xHeader <- rename(xHeader, id=V1, header=V2)

# read activity labels
act_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
act_labels <- rename(act_labels, id=V1, label=V2)

# read trainig data (measured values, corresponding activities and subjects)
train_meas <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_act <- read.table("./UCI HAR Dataset/train/Y_train.txt")
train_subj <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# read testing data (measured values, corresponding activities and subjects)
test_meas <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_act <- read.table("./UCI HAR Dataset/test/Y_test.txt")
test_subj <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Selecting the needed data
# =========================
# find the mean and standard deviation columns
isNeededCol <- (grepl(".*mean\\(\\).*",xHeader$header) | grepl(".*std\\(\\).*",xHeader$header))
# select the needed columns by their id
train_meas.s <- select(train_meas, xHeader$id[isNeededCol])
test_meas.s <- select(test_meas, xHeader$id[isNeededCol])

# Set column names
# =================
# create measurement data headers: remove brackets, change dashes to dots
measHeader <- xHeader$header[isNeededCol] %>% 
                (function(x) gsub("\\(\\)","",x)) %>% 
                (function(x) gsub("-",".",x)) %>%
                tolower
train_subj <- rename(train_subj, subject=V1)
train_act <- rename(train_act, activity=V1)
names(train_meas.s) <- measHeader
test_subj <- rename(test_subj, subject=V1)
test_act <- rename(test_act, activity=V1)
names(test_meas.s) <- measHeader

# Merge the data: (subject, activity, measured data, original dataset's name)
# ===========================================================================
train_all <- cbind(train_subj, train_act, train_meas.s) %>% mutate(dataset="TRAIN")
test_all <- cbind(test_subj, test_act, test_meas.s) %>% mutate(dataset="TEST")
all_data <- rbind(train_all, test_all)

# Replace activity codes with names
# ===================================
all_data <- merge(all_data, act_labels, by.x = "activity", by.y = "id", all=FALSE) %>%  # merge data
                mutate(activity=label) %>%                                              # copy labels to activity
                select(1:69)                                                            # remove temporary column from the end

# Create & export summary
# =======================
summary <- all_data %>% select(1:68) %>% group_by(activity, subject) %>% summarize_all(mean, na.rm=TRUE)
write.table(summary, "output.txt")


# reset working directory
setwd(orig_wd)