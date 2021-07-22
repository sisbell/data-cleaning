library(tidyr)
library(dplyr)
library(data.table)
library(stringr)

# Adds activity ids from the specified test and training files to the signal data
addActivityIds <- function(data, testFileName, trainFileName) {
  addIds(data, testFileName, trainFileName, "activity_id")
}

# Adds ids from the specified test and training files to the signal data
addIds <- function(data, testFileName, trainFileName, idColName) {
  testSubjects <- read.table(testFileName, sep = ",", col.names = idColName) 
  trainSubjects <- read.table(trainFileName, sep = ",", col.names = idColName) 
  rbind(testSubjects, trainSubjects) %>%  cbind(data)  
}

# Adds subject ids from the specified test and training files to the signal data
addSubjectIds <- function(data, testFileName, trainFileName) {
  addIds(data, testFileName, trainFileName, "subject_id")
}

# Creates feature signal data by reading the test and training observation data. 
# Adds feature headers to table.
createFeatureData <- function(featureHeaders, testFileName, trainFileName) {
  testData <-  fread(testFileName, sep = " ", select = featureHeaders$col_index)
  trainingData <- fread(trainFileName, sep = " ", select = featureHeaders$col_index)
  data <- rbind(testData, trainingData)  
  colnames(data) <- featureHeaders$feature
  data
}

# Takes the text labels from the labelFile and merges the label names into the signal data
# Returns a copy of the signal data table.with the labels added
mergeActivityLabels <- function(data, labelFile) {
  read.table(labelFile, sep =" ", col.names = c("activity_id", "activity")) %>%
    merge(data) %>%
    subset(select = -c(activity_id))
}

# Reads features from the specified featuresFileName. Cleans the feature names for clarity.
# Returns a table.
readFeatureHeaders <- function(featuresFileName) {
  filteredText <- grep('mean\\(\\)|std\\(\\)', readLines(featuresFileName), value = TRUE) %>% 
    str_replace_all("\\(\\)", "") %>%
    str_replace_all("((?<!^)(?=[A-Z]))|-", "_") %>%
    str_replace_all("__", "_") %>%
    tolower() %>%
    str_replace_all("t_", "time_") %>%
    str_replace_all("f_", "fft_") %>%
    str_replace_all("mag_", "magnitude_") %>%
    str_replace_all("acc_", "acceleration_")
  read.table(text=filteredText, sep =" ", col.names = c("col_index", "feature"))
}