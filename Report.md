# Business Data Science Challenge 2019

## Introduction
In this problem, we are given the dataset consists of firms in 19 different industries across 5 areas in Canada, our objective is to discover the business trend and determine the business cycle over time.  In order to quantify the business dynamics measures, five variables are introduced.  
Meanwhile, Entry and exit are based on an annual definition whereas openings and closings are based on the quarterly definition.  Both annual based and quarterly based data have their own advantages, the quarterly based measurements update more frequently so that they provide immediate observations of the economy.  Although the annually based measurements update less frequently, these data are more robust and reveal a long term performance of the economy.  
By examing the data, we noticed data entries are recorded quarterly starting from 2000 Q1 to 2017 Q3.  It is obvious that these data form a time series because data entries are highly correlated, a traditional linear model is not applicable due to the violation of the assumption of independence.  Therefore, we decide to use ARIMA(a specific time series model) model to forecast five variables mentioned above.  




## Methodology

### Times Series Analysis
To do the predictions, we decided to apply the seasonal ARIMA model to model our data. For each province's each variable, depending on the behavior of our information set, a S-ARIMA model with optimal parameters will be selected to do the modeling.
The optimal parameters for each model will be selected using R-function auto.arima, by choosing the parameters correspond to the lowest Akaike Information Criterion. Also, auto.arima will also select the appropriate order for integration if the time series is non-stationary. Based on our fitted S-ARIMA models, we will be able to do the forecast for future values of those variables such as Entry and Exit for each province, and we will also be able to construct a prediction interval for each future value.
To be more specific, basically we divided the data set into 95 different subsets based on provinces and industries. Then we will train our model and do the forecast for each province's each industry. Then depend on whether the time series data shows signal of stochastic trend, the auto.arima function will decide to difference our times series for several times or not, to make the time series stationary. For some subsets of our data, there may exist signal of seasonal pattern in the time series, then the auto.arima function will select appropriate seasonal orders for AR and MA parts of our model, which will take into account the seasonality in our time series. For each optimal S-ARIMA model selected by the function auto.arima, we can then forecast the values up to the fourth quarter in 2019.
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
