# Framingham Heart Study: CHD Analysis, Modeling & Interpretation

## Introduction
This project focuses on the **analysis, modeling, and interpretation of the Framingham Heart Study dataset to predict the risk of Coronary Heart Disease (CHD).** The Framingham Heart Study is a long-term, ongoing cardiovascular cohort study on residents of the town of Framingham, Massachusetts. The dataset includes a range of clinical features that are used to assess the likelihood of developing CHD.

![CHD](https://github.com/user-attachments/assets/5f77661d-63d1-4fa3-9428-5222aff51562)


## Table of Contents
1. [Dataset](#dataset)
2. [Data Dictionary](#data-dictionary)
3. [Problem Statement](#problem-statement)
4. [Methodology](#methodology)
5. [Results](#results)
6. [Conclusion](#conclusion)

## Dataset
The dataset used in this project originates from the Framingham Heart Study and includes 4,240 observations and 16 features. It captures a wide range of health-related information to predict the 10-year risk of developing CHD.

## Data Dictionary
| Column               | Description                                                                                 |
|----------------------|---------------------------------------------------------------------------------------------|
| `Sex`                | Gender of the participant [1: Male, 0: Female]                                               |
| `Age`                | Age of the participant [years]                                                               |
| `Education`          | Level of education achieved                                                                  |
| `CurrentSmoker`      | Whether or not the participant is a current smoker [1: Yes, 0: No]                           |
| `CigsPerDay`         | Number of cigarettes smoked per day                                                          |
| `BP_Meds`            | Whether or not the participant is on blood pressure medication [1: Yes, 0: No]               |
| `PrevalentStroke`    | Whether or not the participant has had a stroke [1: Yes, 0: No]                              |
| `PrevalentHyp`       | Whether or not the participant was hypertensive [1: Yes, 0: No]                              |
| `Diabetes`           | Whether or not the participant has diabetes [1: Yes, 0: No]                                  |
| `TotChol`            | Total cholesterol level [mg/dL]                                                              |
| `SysBP`              | Systolic blood pressure [mm Hg]                                                              |
| `DiaBP`              | Diastolic blood pressure [mm Hg]                                                             |
| `BMI`                | Body Mass Index [kg/m^2]                                                                     |
| `HeartRate`          | Heart rate [beats per minute]                                                                |
| `Glucose`            | Glucose level [mg/dL]                                                                        |
| `TenYearCHD`         | 10-year risk of CHD [1: Yes, 0: No]                                                          |

## Problem Statement
The objective of this project is to build predictive models that can accurately estimate the 10-year risk of developing CHD based on clinical and demographic features.

## Methodology
1. **Data Cleaning**: Addressed missing values, dealt with outliers, and transformed variables as necessary.

![Null values Framingham](https://github.com/user-attachments/assets/b9d14cc0-a900-4b9a-bfc9-2cf6a152be4d)

2. **Exploratory Data Analysis (EDA)**: Investigated the relationships between various clinical features and the risk of CHD.

![EDA 1](https://github.com/user-attachments/assets/6b8542fd-48e9-445c-8150-69523073cf69)

![EDA 2](https://github.com/user-attachments/assets/d3a0207d-5b82-43a0-8939-daed58d2d313)

3. **Statistical & Hypothesis Tests** We applied Statistical tests such as **ANOVA test** is used to analyze whether there are **significant differences in means** between groups. In our case, we are comparing the means of the continuous features such as : age, BMI, blood pressure ...etc across different groups defined by the categorical features such as : CHD. Diabetes, hypertension ...etc. We also applied **chi-square test** to determine if there is a significant association between two categorical variables. It helps us understand whether the observed frequencies of categories in the variables differ significantly from what we would expect by chance.

4. **Modeling**: Implemented data scaling and encoding and applied a variety of machine learning algorithms including Logistic Regression, Decision Trees, Random Forest, Gradient Boosting, and SVM.
   
5. **Evaluation**: Evaluated model performance using metrics such as accuracy, precision, recall, F1-score, and ROC-AUC.

6. **Model Interpretation**:
   To gain deeper insights into how the models make predictions, we analyzed feature importance and used SHAP (SHapley Additive exPlanations) values with LIME and Permutation Importance.

### Feature Importance
The Random Forest and Gradient Boosting models highlighted significant features influencing CHD risk.

![Framingham feature importance](https://github.com/user-attachments/assets/e054adc2-3e16-484e-8605-a4d8b2e03f36)


### SHAP Values
SHAP values were employed to interpret model predictions, providing transparency in how each feature impacts the likelihood of CHD development.

![shap Framingham age](https://github.com/user-attachments/assets/d1df9942-5206-4ecc-8ffd-5c5d718a1199)


## Results
- **Best Model**: The ensemble learning using stacking classifier achieved the highest accuracy of **90%** with a balanced precision and recall.

| Metrics            | Score  |
|--------------------|--------|
| Accuracy           | 90%    |
| F1 Score           | 90%    |
| Recall             | 90%    |
| Precision          | 90%    |

![Framingham ROC](https://github.com/user-attachments/assets/0a007cf3-7580-45f7-99ad-2006725df9ef)

## Conclusion
This project illustrates the utility of machine learning models in predicting the 10-year risk of CHD. The findings underscore the importance of certain clinical features and demonstrate the effectiveness of interpretability techniques such as SHAP values.
