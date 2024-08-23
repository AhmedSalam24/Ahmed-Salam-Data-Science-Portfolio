# E-Commerce Customers Data Analysis & Modeling

This project focuses on analyzing customer data from an e-commerce platform to gain insights and build predictive models. The analysis and modeling aim to enhance the understanding of customer behavior and predict future customer spending.

## Table of Contents
- [Project Overview](#project-overview)
- [Dataset](#dataset)
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
- [Modeling](#modeling)
- [Results](#results)
- [Conclusion](#conclusion)
- [Technologies Used](#technologies-used)

## Project Overview

The goal of this project is to analyze the data from an e-commerce site to understand the key factors influencing customer spending. By leveraging Python's data science libraries, we explore the relationships between various customer attributes and their annual spending. This exploration is followed by building predictive models to estimate future spending, which can help in devising better marketing strategies.

## Dataset

The dataset used in this project is provided in `E-Commerce Customers Dataset.csv`. It contains the following features:

- `Email`: Email of the customer
- `Address`: Customer's address
- `Avatar`: Avatar chosen by the customer
- `Avg. Session Length`: Average session of in-store style advice sessions
- `Time on App`: Time spent on the e-commerce app in minutes
- `Time on Website`: Time spent on the e-commerce website in minutes
- `Length of Membership`: Length of membership in years
- `Yearly Amount Spent`: Total amount spent by the customer in a year

The dataset is rich with information about customer interaction and spending behavior, which is essential for performing EDA and building predictive models.

## Exploratory Data Analysis (EDA)

The EDA section involves analyzing the data to discover patterns, relationships, and insights that can guide the modeling process. Key steps include:

- **Correlation Analysis**: Identifying the relationships between features such as `Time on App`, `Time on Website`, `Length of Membership`, and `Yearly Amount Spent`.
- **Visualization**: Using visual tools like Seaborn and Matplotlib to create scatter plots, pair plots, and histograms for a deeper understanding of data distribution and relationships.

  ![E-commerce Correlation Matrix](https://github.com/user-attachments/assets/310c72a3-8fd2-4331-a2a8-a8904d1aa4df)


## Modeling

The modeling section involves building and evaluating predictive models. The main steps include:

1. **Data Preparation**: Preparing the data by selecting features and splitting the dataset into training and testing sets.
2. **Model Selection**: Multiple models were considered, including:
   - **Linear Regression**: To establish a baseline model.
   - **Polynomial Regression**: To capture non-linear relationships.
   - **Decision Trees**: To model complex interactions between variables.
3. **Model Evaluation**: Models were evaluated using metrics like Mean Absolute Error (MAE), Mean Squared Error (MSE), and R-squared.

## Results

The project demonstrated that `Length of Membership` is a strong predictor of `Yearly Amount Spent`, with significant contributions from `Time on App` and `Time on Website`. The final model, using Linear Regression, achieved an R-squared value of X.XX, indicating a good fit for the data.

![E-Commerece Regression](https://github.com/user-attachments/assets/ad321722-977c-4745-be7c-228bb93e1c92)


## Conclusion

This project provided valuable insights into customer behavior on an e-commerce platform and highlighted the importance of membership length in predicting annual spending. The predictive models built can serve as a basis for more advanced modeling and customer segmentation strategies.

## Technologies Used

- **Python**: For data analysis and modeling.
- **Pandas**: For data manipulation and analysis.
- **Seaborn & Matplotlib**: For data visualization.
- **Scikit-learn**: For building and evaluating predictive models.
- **Jupyter Notebook**: For interactive data analysis.
