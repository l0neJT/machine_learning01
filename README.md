# machine_learning01
## [John's Hopkins University Practical Machine Learning on Coursera][coursera_machine_learning]
Logan J Travis
2014-08-24

### Overview
Course assignment for [John's Hopkins University Practical Machine Learning on Coursera][coursera_machine_learning]. Uses [Weight Lifting Exercise Dataset][data_source] to create a prediction model for exercise quality.

### Assignment Text
#### Background
Using devices such as Jawbone Up, Nike FuelBand, and Fitbit it is now possible to collect a large amount of data about personal activity relatively inexpensively. These type of devices are part of the quantified self movement – a group of enthusiasts who take measurements about themselves regularly to improve their health, to find patterns in their behavior, or because they are tech geeks. One thing that people regularly do is quantify how much of a particular activity they do, but they rarely quantify how well they do it. In this project, your goal will be to use data from accelerometers on the belt, forearm, arm, and dumbell of 6 participants. They were asked to perform barbell lifts correctly and incorrectly in 5 different ways. More information is available from the website here: see the section on the [Weight Lifting Exercise Dataset][data_source]. 

#### Data 
The training data for this project are available here: [Training Dataset][data_train]

The test data are available here: [Testing Dataset][data_test]

The data for this project come from this [source][data_source]. If you use the document you create for this class for any purpose please cite them as they have been very generous in allowing their data to be used for this kind of assignment. 

#### Submission Requirement
The goal of your project is to predict the manner in which they did the exercise. This is the "classe" variable in the training set. You may use any of the other variables to predict with. You should create a report describing how you built your model, how you used cross validation, what you think the expected out of sample error is, and why you made the choices you did. You will also use your prediction model to predict 20 different test cases. 

1. Your submission should consist of a link to a Github repo with your R markdown and compiled HTML file describing your analysis. Please constrain the text of the writeup to < 2000 words and the number of figures to be less than 5. It will make it easier for the graders if you submit a repo with a gh-pages branch so the HTML page can be viewed online (and you always want to make it easy on graders :-).
2. You should also apply your machine learning algorithm to the 20 test cases available in the test data above. Please submit your predictions in appropriate format to the programming assignment for automated grading. See the programming assignment for additional details. 

#### Reproducibility 
Due to security concerns with the exchange of R code, your code will not be run during the evaluation by your classmates. Please be sure that if they download the repo, they will be able to view the compiled HTML version of your analysis.

### Files
#### ./
* README.md (and .html): this file providing background on the assignment and associated files
* predicting_exercise_quality.rmd (and .html): assignment write-up
* machine_learning01.Rproj: R Studio project file

#### ./data/
* pml-training.csv: training dataset
* pml-training-download-detail.txt: text file with download source and date/time for training dataset
* pml-testing.csv: testing dataset
* pml-testing-download-detail.txt: text file with download source and date/time for testing dataset

#### ./predicting_exercise_quality_cache/
Cached data for knitting predicting_exercise_quality.rmd to html

#### ./predicting_exercise_quality_files/
Output files (notably plot images) for predicting_exercise_quality.html

#### ./test_results/
* problem_id_#.txt: text files for predicted class across 20 problems in test dataset; uploaded individually to satisfy assignment submission requirements
* test_results_timestamp.txt: text file with date/time for predictions

<!--Links-->
[coursera_machine_learning]: https://www.coursera.org/course/predmachlearn "Coursera Practical Machine Learning Course Page"
[data_source]: http://groupware.les.inf.puc-rio.br/har "GroupwareLES Human Activity Recognition Page"
[data_train]: https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv "GroupwareLES Weight Lifting Exercises Training Dataset"
[data_test]: https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv "GroupwareLES Weight Lifting Exercises Testing Dataset"