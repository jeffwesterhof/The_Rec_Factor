# The_Rec_Factor

Using machine learning to predict recidivism

Stage 1: Data cleaning
  . Remove all rows with more than 5 missing values
  . Impute missing values
Stage 2: Descriptive statistics
  . Relative frequency differences in categorical data between groups
  . Summary statistics for quantitative variables
  . Correlations between quantitative variables
Stage 3: Random Forest
  . Random forest for feature importance
  . Cross-validated RF classification model using demographic & criminal history factors
  . Cross-validated RF classification model using all data
Stage 4: Knn
  . Convert qualitative data to quantitative & normalize all variables
  . Cross-validated Knn classification model using demographic & criminal history factors
  . Cross-validated Knn classification model using demographic & post-release factors
  . Cross-validated Knn classification model using all data
Stage 5: Logistic regression
  . Train 2 logistic regression models using a)demographic & criminal history factors & b) using all data
  . Generate two separate risk scores using the probabilities calculated by the models
  . Compare the risk scores: what are the differences betewen those whose risk scores increased and those where they decreased
  . Use models to predict recidivism outcomes
Stage 6: Evaluating the models and comparing them
  . More to come
