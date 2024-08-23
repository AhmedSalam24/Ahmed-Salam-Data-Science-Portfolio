# Brain Stroke: Analysis, Modeling & Interpretation

## Introduction
This project centers on the **analysis, modeling, and interpretation of a dataset related to brain strokes.** The aim is to leverage data science techniques to predict the occurrence of strokes based on various demographic, lifestyle, and clinical features. This work can contribute to early detection and prevention strategies for those at risk.

![stroke](https://github.com/user-attachments/assets/cf2da331-0868-4b0f-b186-f05a8e1dc7dd)


## Table of Contents
1. [Dataset](#dataset)
2. [Data Dictionary](#data-dictionary)
3. [Problem Statement](#problem-statement)
4. [Methodology](#methodology)
5. [Results](#results)
6. [Conclusion](#conclusion)

## Dataset
The dataset used in this project includes 5,110 observations and 12 features. It encompasses a variety of factors that might contribute to the likelihood of experiencing a stroke.

## Data Dictionary
| Column            | Description                                                                                 |
|-------------------|---------------------------------------------------------------------------------------------|
| `Gender`          | Gender of the patient [Male, Female]                                                        |
| `Age`             | Age of the patient [years]                                                                   |
| `Hypertension`    | Whether the patient has hypertension [0: No, 1: Yes]                                         |
| `HeartDisease`    | Whether the patient has heart disease [0: No, 1: Yes]                                        |
| `EverMarried`     | Marital status of the patient [Yes, No]                                                      |
| `WorkType`        | Type of occupation [children, Govt_job, Never_worked, Private, Self-employed]                |
| `ResidenceType`   | Area of residence [Urban, Rural]                                                             |
| `AvgGlucoseLevel` | Average glucose level of the patient [mg/dL]                                                 |
| `BMI`             | Body Mass Index [kg/m^2]                                                                     |
| `SmokingStatus`   | Smoking status [formerly smoked, never smoked, smokes, Unknown]                              |
| `Stroke`          | Whether the patient had a stroke [0: No, 1: Yes]                                             |

## Problem Statement
The primary objective of this project is to develop predictive models that can accurately determine the risk of a stroke based on a combination of clinical, lifestyle, and demographic factors.

## Methodology
1. **Data Cleaning**: Managed missing data, handled outliers, and performed necessary transformations.

![stroke null](https://github.com/user-attachments/assets/f1089508-d8d9-43ff-9834-07179522fa9d)


2. **Exploratory Data Analysis (EDA)**: Investigated correlations between various features and the occurrence of strokes.

![stroke EDA 1](https://github.com/user-attachments/assets/f0c56501-033f-48b5-b0bc-9aafb4ec4b9f)

![stroke EDA 2](https://github.com/user-attachments/assets/987982bc-74d4-4bb4-80de-f7ef20f334f6)

3. **Statistical & Hypothesis Tests**: Conducted statistical tests such as ANOVA and chi-square tests to evaluate the significance of differences in means across various groups and to assess associations between categorical variables.

4. **Modeling**: Data preprocessing was followed by the implementation of various machine learning algorithms including Logistic Regression, Decision Trees, Random Forest, Gradient Boosting, and SVM.

5. **Model Interpretation**:
   Interpreted model predictions by analyzing feature importance and using SHAP (SHapley Additive exPlanations) values for a more transparent understanding of model decisions.

### Feature Importance
The Gradient Boosting model emphasized certain features as key determinants in stroke prediction.

### SHAP Values
SHAP values were utilized to interpret the model's predictions, revealing the contribution of individual features to the outcome.

![shap age stroke](https://github.com/user-attachments/assets/203a4ac6-3a9e-43ef-bc83-ff707e100808)


## Results
- **Best Model**: The XGBoost classifier achieved the highest accuracy of **86%** with balanced precision and recall.

| Metrics     	    | Score  |
|------------------|--------|
| Accuracy     	| 86%    |
| F1 Score    	    | 86%    |
| Recall           | 86%    |
| Precision        | 86%    |

![ROC Stroke](https://github.com/user-attachments/assets/60a450db-b776-4174-8100-1ad07511beb6)


## Conclusion
This project highlights the potential of machine learning models to predict the likelihood of a stroke based on a range of features. The interpretability of the models, through methods like SHAP, allows for a clearer understanding of the factors contributing to stroke risk.
