# Weather Types Classification

![Weather-types](https://github.com/user-attachments/assets/e3c111cc-067e-4aa3-b515-b55814a8ca6c)


## Table of Contents
- [Introduction](#introduction)
- [Data Overview](#data-overview)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Data Preprocessing](#data-preprocessing)
- [Model Training and Evaluation](#model-training-and-evaluation)
- [Conclusion](#conclusion)

## Introduction
This project aims to build a machine learning model to classify different weather types based on various meteorological features. The dataset used in this project is synthetically generated to mimic real-world weather data, making it a suitable platform for exploring weather-related classification tasks.

## Data Overview
The dataset includes the following features:

- **Temperature**: The temperature in degrees Celsius.
- **Humidity**: The relative humidity as a percentage.
- **Wind Speed**: The wind speed in meters per second.
- **Precipitation (%)**: The percentage of precipitation.
- **Cloud Cover**: The type of cloud cover (clear, partly cloudy, overcast).
- **Atmospheric Pressure**: The atmospheric pressure in hectopascals.
- **UV Index**: The ultraviolet index.
- **Season**: The season (Winter, Spring, Summer, Autumn).
- **Visibility (km)**: The visibility in kilometers.
- **Location**: The location (inland, mountain, coastal).
- **Weather Type**: The weather type (Sunny, Cloudy, Rainy, Snowy).

## Exploratory Data Analysis
Exploratory data analysis was conducted to gain insights into the dataset.

## Data Preprocessing
Before training the machine learning model, the following preprocessing steps were performed:

- **Handling Missing Values**: There are no missing values in the dataset.
- **Encoding Categorical Features**: The categorical features, such as Cloud Cover, Season, Location, and Weather Type, were encoded using appropriate techniques (e.g., one-hot encoding).
- **Scaling Numerical Features**: The numerical features were scaled using standard scaler to ensure they have the same scale.

## Model Training and Evaluation
A variety of machine learning models were trained and evaluated to classify the weather types. The following models were considered:

- **Logistic Regression**
- **Decision Tree Classifier**
- **Random Forest Classifier**

The models were trained using the preprocessed data, and their performance was evaluated using appropriate metrics, such as accuracy, precision, recall, and F1-score. The best-performing model was selected.

| Metrics     	                |  score 	|
|-------------------	        |------------------	|
| Accuracy     	| 92% 	            |
| F1 Score    	        | 92% 	            |
| Recall               	    | 92% 	            |
| Precision           |   92%    |

![Weather modeling results](https://github.com/user-attachments/assets/041c8b03-502a-4363-958e-51d0c2a26996)

## Technologies Used

- **Python**: For data analysis and modeling.
- **Pandas**: For data manipulation and analysis.
- **Seaborn & Matplotlib**: For data visualization.
- **Scikit-learn**: For building and evaluating predictive models.
- **Jupyter Notebook**: For interactive data analysis.

## Conclusion
This project demonstrates the application of machine learning techniques in classifying weather types based on various meteorological features. The synthetically generated dataset provides a robust platform for exploring weather-related classification tasks and developing robust models. The insights gained from the exploratory data analysis and the performance of the trained models can be valuable in understanding and predicting weather patterns.
