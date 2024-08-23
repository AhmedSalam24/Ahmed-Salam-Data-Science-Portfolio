# Myocardial Infarction Analysis and Modeling

## Introduction
This project explores the **analysis and modeling of Myocardial Infarction (MI)**. Myocardial Infarction, commonly known as a **heart attack**, occurs when blood flow to a part of the heart is blocked for a long enough time that part of the heart muscle is damaged or dies. The goal of this project is to leverage machine learning algorithms to predict the occurrence of these heart conditions using clinical data and tests such as **Troponin Test and CK-MB Test.**

The **troponin test** measures the level of troponin, a protein found in the cells of the heart muscle, in a person's blood. Elevated troponin levels indicate damage to the heart muscle, such as that caused by a heart attack.

Additionally, we will incorporate the **CK-MB test**, which looks for a specific enzyme in the blood to diagnose or rule out a heart attack. 

![MI](https://github.com/user-attachments/assets/9d121d35-4f10-4cfc-be92-8f0622a26078)

## Table of Contents
1. [Dataset](#dataset)
2. [Data Dictionary](#data-dictionary)
3. [Problem Statement](#problem-statement)
4. [Methodology](#methodology)
5. [Results](#results)
6. [Conclusion](#conclusion)

## Dataset
This heart attack dataset was collected at Zheen hospital in Erbil, Iraq, from January 2019 to May 2019. The dataset used in this project includes 1319 observations and 9 features. It encompasses a variety of factors that might contribute to the likelihood of experiencing a heart attack.

## Data Dictionary
| Column            | Description                                                                                 |
|-------------------|---------------------------------------------------------------------------------------------|
| Age                      | Age of the patient                                                                              | Continuous                                                                            |
| Gender                   | Male or female                                                                                  | Nominal                                                                              |
| Heart Rate               | Heart rate                                                                                      | Continuous (In medical research, often considered continuous due to many possible values) |
| Systolic Blood Pressure  | Systolic blood pressure                                                                         | Continuous                                                                            |
| Diastolic Blood Pressure | Diastolic blood pressure                                                                        | Continuous                                                                            |
| Blood Sugar              | Blood sugar level                                                                              | Continuous                                                                            |
| CK-MB                    | CK-MB level                                                                                    | Continuous                                                                            |
| Troponin                 | Troponin level                                                                                  | Continuous                                                                            |
| Result                   | Binary variable indicating whether the patient has a risk of Myocardial Infarction (MI)        | Binary: "1" means "Yes", "0" means "No"                                               |

## Problem Statement
The primary objective of this project is to build predictive models that can accurately classify and predict the presence of Myocardial Infarction based on clinical features and tests.

## Methodology
1. **Data Cleaning**: Managed missing data, handled outliers, and performed necessary transformations.

2. **Exploratory Data Analysis (EDA)**: Investigated distribution of and correlations between various features.

![MI EDA 1](https://github.com/user-attachments/assets/84c17ef2-8e8e-4122-93fa-bf5346cfa4a4)

![MI EDA 2](https://github.com/user-attachments/assets/b3f39895-3150-4c2c-84b5-c76735d4be3d)

![CORR MI](https://github.com/user-attachments/assets/870b08e9-236d-4193-bacc-5936e2e37fff)


3. **Statistical & Hypothesis Tests**: Conducted statistical tests such as ANOVA test to evaluate the significance of differences in means across various groups.

4. **Modeling**: Data preprocessing was followed by the implementation of various machine learning algorithms including Logistic Regression, Decision Trees, Random Forest, Gradient Boosting, XGBoost and SVM.

5. **Model Interpretation**:
   Interpreted model predictions by analyzing feature importance and using SHAP (SHapley Additive exPlanations) values for a more transparent understanding of model decisions.

### Feature Importance and selection
The Random Forest emphasized certain features as key determinants in MI prediction (Troponin, CK-MP, Age)

![Features importance mi](https://github.com/user-attachments/assets/9899c27c-8f15-4042-ad6d-afd2ce85b65e)


### SHAP Values
SHAP values were utilized to interpret the model's predictions, revealing the contribution of individual features to the outcome.

![shap mi](https://github.com/user-attachments/assets/47565eea-28b9-4b6b-9f75-f5a59559b244)

## Results
- **Best Model**: The XGBoost classifier with only the most important 3 features conducted from the features selesction process achieved the highest accuracy of **99%** with balanced precision and recall.

| Metrics     	    | Score  |
|------------------|--------|
| Accuracy     	| 99%    |
| F1 Score    	    | 99%    |
| Recall           | 99%    |
| Precision        | 99%    |

![confusion matrix MI](https://github.com/user-attachments/assets/6b992740-a41f-475f-ba7d-653bd50eeb68)


![ROC MI](https://github.com/user-attachments/assets/a2335f31-11d4-4ce6-88d9-0fc6b1857157)

![Precision-Recall MI](https://github.com/user-attachments/assets/ec1c575a-2318-49fb-9cc6-937a072c66ac)


## Conclusion
This project successfully demonstrates the application of machine learning techniques in predicting critical heart conditions like Myocardial Infarction. The models developed provide valuable insights into the key factors contributing to these conditions, which can assist healthcare professionals in making informed decisions for early detection and treatment.
