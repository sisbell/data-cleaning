# data-cleaning
Data Cleaning: Week 4 Project

### Instruction List
1. Clone this repo: git@github.com:sisbell/data-cleaning.git
2. Open RStudio
3. setwd to the data-cleaning directory which you cloned in step 1
4. Install the following R packages: install.packages(c("tidyr", "dplyr", "data.table", "stringr"))
5. Open run_analysis.R script in RStudio. 
6. Click source on file button
7. Run the run_analysis.R script

Tested on MacOS 11.4 w/ RStudio 1.4.1717

### Scripts and Data
The input data is located in the 'data' directory. It is divided between training data
and test data. See CodeBook.md for more information.

There are two scripts. The first is 'featureDataImporter.R'. It contains the 
functions needed to process the data. The second script is 'run_analysis.R'. This file
imports 'featureDataImporter.R' and creates two output files in the 'output' directory 
using data from the 'data' directory as the input.

The first step in processing is to read "data/features.txt" which contains all the 
feature info like accelerometer or gravity information. The headers are processed
to be more readable than the raw data.

Next, we create feature data by reading the test and training observation data. 
* "data/test/x_test.txt"
* "data/train/x_train.txt"

and add the feature headers to the table.

This gives a collapsed view of both the training and test data observations with 
proper feature labels.

Next, we add the subject ids (for 30 people under test or training)
* "data/test/subject_test.txt"
* "data/train/subject_train.txt"

At this point, we have all the data feature observations with their subject info 
added in. So we know who of the 30 participants the measurements belong to.

Finally, we add in the activity ids and labels
* "data/test/y_test.txt", 
* "data/train/y_train.txt"
* "data/activity_labels.txt

This gives us the type of movement activity (like WALKING) for each feature observation.

### Output (in output directory)
* featureData.csv - contains feature data with individual subject and activity types
* meanData.txt - contains feature data averages, summarized by subject and activity type

