# Business Data Science Challenge 2019

## Introduction
In this problem, we are given the dataset consists of firms in 18 different industries across 5 provinces in Canada, our objective is to discover the business trend and determine the business cycle over time.  In order to quantify the business dynamics measures, five variables are introduced.  
Meanwhile, Entry and exit are based on an annual definition whereas openings and closings are based on the quarterly definition.  Both annual based and quarterly based data have their own advantages, the quarterly based measurements update more frequently so that they provide immediate observations of the economy.  Although the annually based measurements update less frequently, these data are more robust and reveal a long term performance of the economy.  
By examing the data, we noticed data entries are recorded quarterly starting from 2000 Q1 to 2017 Q3.  It is obvious that these data form a time series because data entries are highly correlated, a traditional linear model is not applicable due to the violation of the assumption of independence.  Therefore, we decide to use ARIMA(a specific time series model) model to forecast five variables mentioned above.  




## Methodology

### Times Series Analysis

### ANOVA

### Poisson Regression

## Statistical Results

### Tables and Forms



| Geography | Industry | Q1 | Q2 | Q3 | Q4 | Q5 | Q6 | Q7 | Q8 |
|:----------|:---------|---:|---:|---:|---:|---:|---:|---:|---:|
|    CA     |    52    |24365|23476|23435|23022|24020|23190|23134|22716|
|    BC     |    52    |3998|3816|3810|3773|3972|3789|3783|3747|
|    ON     |    52    |10560|10127|10134|9956|10474|10025|10021|9845|
|    QC     |    52    |3868|3804|3753|3730|3783|3719|3668|3646|
|    AB     |    52    |3073|2905|2912|2846|3009|2842|2848|2782|

### Visual Results

![forecast_Active_52_CA](plots/forecast_Active_52_CA.jpg)


## Conclusions
