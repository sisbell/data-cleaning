# Functions for cleaning activity and movement data for smart phones

# Original Data:
# Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
# Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly 
# Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). 
# Vitoria-Gasteiz, Spain. Dec 2012

source("featureDataImporter.R")

# Creates a clean version of the feature observation data, with subject and activity fields included
featureData <- readFeatureHeaders("data/features.txt") %>% 
  createFeatureData("data/test/x_test.txt", "data/train/x_train.txt") %>% 
  addSubjectIds("data/test/subject_test.txt", "data/train/subject_train.txt") %>%
  addActivityIds("data/test/y_test.txt", "data/train/y_train.txt") %>% 
  mergeActivityLabels("data/activity_labels.txt")

#Summarizes with the mean of the the signal data grouped by subject and activity 
meanData <- featureData %>%
  group_by(subject_id, activity) %>%
  summarise_all(list(average = mean))

# Write out the data
if(!dir.exists("output")) {
  dir.create("output")
}
write.table(meanData, "output/meanData.txt", row.name=FALSE)
