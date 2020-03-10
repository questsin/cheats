# Agorithms

# MS AI Cognitive Services
## Vision
- RESNET
## Speech
- Switchboard
## Language
## Search
## Knowledge
## Bot Framework

# statistics
    mode, median, mean, variance,
    bell curve
    Positive / Negative Skkew
    ucurve

## Stats
Poisson regression model
Entropy MDL binning mode 

A `Pearson correlation` is a number between -1 and 1 that indicates the extent to which two variables are linearly related. The Pearson correlation is also known as the “product moment correlation coefficient” (PMCC) or simply “correlation

`Nonparametric Methods for Correlation`: `Spearman's rank correlation` for ordinal 
Nonparametric Methods for Correlation: Chi-square tables

`SMOTE`? Just like the name suggests, the technique generates synthetic data for the minority class. SMOTE proceeds by joining the points of the minority class with line segments and then places artificial points on these lines.

`Singular Value Decomposition (SVD)`
~`PCA` is principal components analysis. It takes a dataset and "rotates" it, taking the original axes defined by the original variables, and creating new axes that are linear combinations of the old data. The precise linear combinations are chosen such that each successive component maximizes variance along that new dimensions. A quick google search turns up lots of tutorials


`MICE` is "multiple imputaiton by chained equations". Basically, missing data is predicted by observed data, using a sequential algorithm that is allowed to proceed to convergence. (1) Start by filling in the missing data with plausible guesses at what the values might be. (2) for each variable, predict the missing values by modeling the observed values as a function of the other variables. At each step, update the predictions of the missing values. There are many tricky details, and many online tutorials. here is an article aimed at biostat practitioners:

`Mean squared error (MSE)` is one of the most popular model evaluation metrics in statistical modeling. It allows you to look at how far your predictions are on average from the correct values. In the example with time series analysis, MSE is a valid approach to model evaluation.

# Dat Wrangling
1hotencoder
encoder / decoder
Convolutional encoder
variational encoder

# Data Science
bandit problem, early stop strategies, eval mentrics
cross-validation, smote, seq model
hyperparameter tunning
automated ml in azure
Fishers exact test

 ## confusion matrix
- True positive: the number of times a model predicts true (or yes) when it is actually yes
- True negative: the number of times a model predicts false (or no) when it is actually false
- False negative: the number of times a model predicts false when it is actually true
- False positive: the number of times a model predicts true when it is actually false
- accuracy = (true + positive + true negative ) / total
- precision = (true + positive )/(true positive + false positive)

# ML
    precision= relevancy
    recall = completeness
    f1-score
    support
## ??
 Autoregressive Integrated Moving Average (ARIMA) model. ~ time series analysis that helps with predictions concerning time.
## Classificaion
## Anomaly
## Clustering
## Regression
    Linear Regression
    multiple linear regression
    polynomial regression.
    Poisson regression
## Reinforcement

# Deep Learning
RNN vs CNN vs DCN vs GAN
rnn = Recurrent neural networks (RNNs) ~sequences
cnn = Convolutional neural networks (CNNs)  ~ speech, vision    
    - You Only Look Once - YOLO
    - Softmax is an activation function used in neural networks
    - LSTM - a variation of RNNs that is very good at connecting previous data to current data where there is a long gap.
    - GRU - a variation of LSTM that is simpler - meaning a decrease in training time, which can be quite beneficial sometimes.
      - Softmax outputs multiple probabilities adding up to 1 
knn = asks "what is this new item most similar too?".
dnn =
ann =
activation functions
     stochastic gradient descent (SGD) = Adam and RMSProp

Relu vs sigmoid 

Classification Algorithms
    Logistic Regression
    Light Gradient Boosting Machine (GBM)
    Decision Tree
    Random Forest
    Naive Bayes
    Linear Support Vector Machine (SVM)
    XGBoost
    Deep Neural Network (DNN) Classifier
    Others...
Regression Algorithms
    Linear Regression
    Light Gradient Boosting Machine (GBM)
    Decision Tree
    Random Forest
    Elastic Net
    LARS Lasso
    XGBoost
    Others...
Forecasting Algorithms
    Linear Regression
    Light Gradient Boosting Machine (GBM)
    Decision Tree
    Random Forest
    Elastic Net
    LARS Lasso
    XGBoost
    Others...