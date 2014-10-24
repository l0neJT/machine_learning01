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
inTrn <- createDataPartition(dat$classe, p = 0.75, list = F)
trn <- dat[inTrn, ]
ctl <- dat[-inTrn, ]

# Identify rows with statistical measures
trnStat <- row(trn)[trn$new_window == "yes", 1]
ctlStat <- row(ctl)[ctl$new_window == "yes", 1]

# grep columns with statistacal measures
statCol <- grep("amplitude_|avg_|kurtosis_|max_|min_|skewness_|stddev_|var_", names(trn))

# Determine calumns with all NAs
allNAs <- col(trn)[1, colSums(is.na(trn[trnStat, ])) == length(trnStat)]

# Identify columns for non-statistical and statistical measures
noStat <- col(trn)[1, -c(2:7, statCol)]
statOnly <- c(1, statCol[!statCol %in% allNAs], 159)

# Set control for train function
# Uses out-of-bag cross-validation
tr <- trainControl(method = "oob", number = 10, allowParallel = T, verboseIter = T)

# Create random forest model for both non-statistical and statistical measures
model <- train(classe ~ ., data = trn[, noStat], method = "rf", trControl = tr)
modelStat <- train(classe ~ ., data = trn[trnStat, statOnly], method = "rf", trControl = tr)

# Statistical model works but predictions dropped for rows with NAs
# Significantly reduces value/accuracy