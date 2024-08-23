# UCI Heart Disease Data Analysis & Modeling

## Introduction
This project involves an analysis and modeling of the UCI Heart Disease dataset, which combines data from five different sources to create one of the largest datasets available for coronary artery disease (CAD) research. The goal is to apply data science techniques to predict heart disease based on a variety of clinical features.

![CAD](https://github.com/user-attachments/assets/095c6331-05b2-4ab3-8ab7-0af9b610fee0)

## Table of Contents
1. [Dataset](#dataset)
2. [Data Dictionary](#data-dictionary)
3. [Problem Statement](#problem-statement)
4. [Methodology](#methodology)
5. [Results](#results)
6. [Conclusion](#conclusion)

## Dataset
The dataset used in this project is a combination of five heart disease datasets, resulting in 918 observations and 11 features. The sources include:

- Cleveland: 303 observations
- Hungarian: 294 observations
- Switzerland: 123 observations
- Long Beach VA: 200 observations
- Stalog (Heart) Data Set: 270 observations

## Data Dictionary
| Column           | Description                                                                                 |
|------------------|---------------------------------------------------------------------------------------------|
| `Age`            | Age of the patient [years]                                                                   |
| `Sex`            | Sex of the patient [M: Male, F: Female]                                                      |
| `ChestPainType`  | Type of chest pain [TA: Typical Angina, ATA: Atypical Angina, NAP: Non-Anginal Pain, ASY: Asymptomatic] |
| `RestingBP`      | Resting blood pressure [mm Hg]                                                               |
| `Cholesterol`    | Serum cholesterol [mg/dl]                                                                    |
| `FastingBS`      | Fasting blood sugar [1: if FastingBS > 120 mg/dl, 0: otherwise]                              |
| `RestingECG`     | Resting electrocardiogram results [Normal, ST: having ST-T wave abnormality, LVH: Left ventricular hypertrophy] |
| `MaxHR`          | Maximum heart rate achieved [Numeric value between 60 and 202]                               |
| `ExerciseAngina` | Exercise-induced angina [Y: Yes, N: No]                                                      |
| `Oldpeak`        | ST depression induced by exercise relative to rest                                           |
| `ST_Slope`       | Slope of the peak exercise ST segment [Up: upsloping, Flat: flat, Down: downsloping]         |
| `HeartDisease`   | Presence of heart disease [1: heart disease, 0: Normal]                                      |

## Problem Statement
The objective of this project is to build predictive models that can accurately diagnose heart disease based on clinical features, aiding in early detection and treatment.

## Methodology
1. **Data Cleaning**: Handled any missing values, duplicates, and outliers.
2. **Exploratory Data Analysis (EDA)**: Visualized relationships between features and the target variable.

![EDA 3 UCI](https://github.com/user-attachments/assets/20ad3d84-4f45-478e-87fd-d197cb50c1cf)
   
![EDA 2 UCI](https://github.com/user-attachments/assets/f6372633-14f6-4a4e-a2ad-d7da41439034)

![EDA - UCI](https://github.com/user-attachments/assets/b3cc447a-937f-4d6b-89d3-de40b99f5393)
   
3. **Modeling**: Applied machine learning algorithms including Logistic Regression, Decision Trees, Random Forest, SVM, KNN, and Bagging.
4. **Evaluation**: Assessed model performance using accuracy, precision, recall, F1-score, and ROC-AUC.

5. **Evaluation**:
In this section, we explore how some of our best models make predictions by analyzing feature importance and utilizing SHAP (SHapley Additive exPlanations) values.

#### Feature Importance
The Random Forest model provided insights into which features were one of the most influential in predicting heart disease.

![features importance uci](https://github.com/user-attachments/assets/bb610a3e-6013-450f-90b1-17cc5de068ec)

#### SHAP Values
SHAP values were used to interpret the predictions of our models on an individual basis, providing a more granular understanding of how each feature contributes to the prediction.

![shap uci](https://github.com/user-attachments/assets/271e830a-5f6a-4c0f-abba-51915b1cb17a)

## Results
- **Best Model**: The Support Vector Machine (SVM) classifier achieved the highest accuracy of **92%** with a balanced precision and recall.
- **Key Insights**: Features such as `ExerciseAngina`, `Oldpeak`, and `ST_Slope` were found to be significant predictors of heart disease.

| Metrics     	                |  score 	|
|-------------------	        |------------------	|
| Accuracy     	| 91% 	            |
| F1 Score    	        | 91% 	            |
| Recall               	    | 92% 	            |
| Precision           |   92%    |

![UCI Heart Disease - ROC](https://github.com/user-attachments/assets/ff2cc321-79c8-4b1d-a501-37e12f8c6c2e)

## Conclusion
This project demonstrates the effectiveness of data science and machine learning models in predicting heart diseases based on clinical features.
