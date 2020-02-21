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

# ???
AMLS
bandit problem, early stop strategies, eval mentrics
cross-validation, smote, seq model
hyperparameter tunning
automated ml in azure
1hotencoder
encoder / decoder
Convolutional encoder
variational encoder
Relu vs sigmoid 
smote?,
 mice


# ML
## statistics
    mode, median, mean, variance,
    bell curve
    Positive / Negative Skkew
    ucurve
## Classificaion
## Anomaly
## Clustering
## Regression
    Linear Regression
    Poisson regression
## Reinforcement
## ?
    Fishers exact test
    Pearson
    PCA

# Deep Learning
RNN vs CNN vs DCN vs GAN
rnn =
dnn =
ann =

SMOTE? Just like the name suggests, the technique generates synthetic data for the minority class. SMOTE proceeds by joining the points of the minority class with line segments and then places artificial points on these lines.

PCA is principal components analysis. It takes a dataset and "rotates" it, taking the original axes defined by the original variables, and creating new axes that are linear combinations of the old data. The precise linear combinations are chosen such that each successive component maximizes variance along that new dimensions. A quick google search turns up lots of tutorials

MICE is "multiple imputaiton by chained equations". Basically, missing data is predicted by observed data, using a sequential algorithm that is allowed to proceed to convergence. (1) Start by filling in the missing data with plausible guesses at what the values might be. (2) for each variable, predict the missing values by modeling the observed values as a function of the other variables. At each step, update the predictions of the missing values. There are many tricky details, and many online tutorials. here is an article aimed at biostat practitioners: