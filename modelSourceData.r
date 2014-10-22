## Model based on source data from http://groupware.les.inf.puc-rio.br/
## Compares the accuracy of models using statistical measures vs. not

# Load libraries
library(caret)
library(plyr)

# Set seed
set.seed(296785)

# Establish column classes to skip statistical meaures noted above
# Sets 'X' column as character to prevent error
colClasses <- c("factor", rep("numeric", 2), "character", "factor",
                rep("numeric", 153), "factor")

# Read training dataset
dat <- read.csv("./data/pml-source.csv", colClasses = colClasses, na.strings = c("NA", "#DIV/0!"))

# Split into training and control
# Limits columns to those used for predictions/results
inTrn <- createDataPartition(dat$classe, p = 0.75, list = FALSE)
trn <- dat[inTrn, ]
ctl <- dat[-inTrn, ]

# Identify and copy rows with statistical measures
trnStat <- trn$new_window == "yes"
ctlStat <- ctl$new_window == "yes"