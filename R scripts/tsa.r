library("forecast")
mydat <- read.csv("~/GitHub/Data-Challenge-2019/data/Data_wide_ENG.csv")
timeseries.predict <- function(data, variable, forecast.time) {
  predictions <- NULL
  Indus <- NULL
  Geo <- NULL
  if (variable == "Exit") {
    forecast.time <- forecast.time + 7
    for (i in 1:95) {
      newhope <- data$Exit[((i-1)*71+1):(i*71)]
      newhope <- ts(newhope,frequency = 4)
      newhope <- na.omit(newhope)
      myhope <- ts(newhope,frequency = 4)
      model1 <- auto.arima(myhope)
      a <- forecast(model1,h=forecast.time)
      jpeg(paste("forecast_", variable,"_",data$NAICS_Codes[i*71], "_", data$Geography[i*71],".jpg", sep = ""))
      plot(a)
      dev.off()
      con <- c(round(a$mean))
      predictions <- rbind(predictions,con)
      Indus <- c(Indus,as.character(data$NAICS_Codes[(71*i)]))
      Geo <- c(Geo,as.character(data$Geography[(71*i)]))
    }
    row.names(predictions) <- NULL
    colname <- NULL
    domain <- c(1,2,3,4)
    init_year <- 2017
    for (j in 1:forecast.time) {
      current_index <- (4 + j - 1) %% 4
      if (current_index == 0) {
        current_index <- 4
      }
      current_year <- init_year + floor((3 + j - 1) / 4)
      colname <- c(colname, paste(as.character(current_year), "_" ,"Q", sep = "", as.character(domain[current_index])))
    }
    colnames(predictions) <- colname
    prediction1 <- as.data.frame(predictions)
    prediction1$Geography <- Geo
    prediction1$Industry <- Indus
    prediction <- prediction1[, c(forecast.time + 1, forecast.time + 2, 1:forecast.time)]
    write.csv(prediction, file = "prediction_exit.csv")
    
  } else if (variable == "Entry") {
    for (i in 1:95) {
      newhope <- data$Entry[((i-1)*71+1):(i*71)]
      newhope <- ts(newhope,frequency = 4)
      newhope <- na.omit(newhope)
      myhope <- ts(newhope,frequency = 4)
      model1 <- auto.arima(myhope)
      a <- forecast(model1,h=forecast.time)
      jpeg(paste("forecast_", variable,"_",data$NAICS_Codes[i*71], "_", data$Geography[i*71],".jpg", sep = ""))
      plot(a)
      dev.off()
      con <- c(round(a$mean))
      predictions <- rbind(predictions,con)
      Indus <- c(Indus,as.character(data$NAICS_Codes[(71*i)]))
      Geo <- c(Geo,as.character(data$Geography[(71*i)]))
    }
    row.names(predictions) <- NULL
    colname <- NULL
    domain <- c(1,2,3,4)
    init_year <- 2017
    for (j in 1:forecast.time) {
      current_index <- (4 + j - 1) %% 4
      if (current_index == 0) {
        current_index <- 4
      }
      current_year <- init_year + floor((3 + j - 1) / 4)
      colname <- c(colname, paste(as.character(current_year), "_" ,"Q", sep = "", as.character(domain[current_index])))
    }
    colnames(predictions) <- colname
    prediction1 <- as.data.frame(predictions)
    prediction1$Geography <- Geo
    prediction1$Industry <- Indus
    prediction <- prediction1[, c(forecast.time + 1, forecast.time + 2, 1:forecast.time)]
    write.csv(prediction, file = "prediction_entry.csv")
    
  } else if (variable == "Opening") {
    for (i in 1:95) {
      newhope <- data$Opening[((i-1)*71+1):(i*71)]
      newhope <- ts(newhope,frequency = 4)
      newhope <- na.omit(newhope)
      myhope <- ts(newhope,frequency = 4)
      model1 <- auto.arima(myhope)
      a <- forecast(model1,h=forecast.time)
      jpeg(paste("forecast_", variable,"_",data$NAICS_Codes[i*71], "_", data$Geography[i*71],".jpg", sep = ""))
      plot(a)
      dev.off()
      con <- c(round(a$mean))
      predictions <- rbind(predictions,con)
      Indus <- c(Indus,as.character(data$NAICS_Codes[(71*i)]))
      Geo <- c(Geo,as.character(data$Geography[(71*i)]))
    }
    row.names(predictions) <- NULL
    colname <- NULL
    domain <- c(1,2,3,4)
    init_year <- 2017
    for (j in 1:forecast.time) {
      current_index <- (4 + j - 1) %% 4
      if (current_index == 0) {
        current_index <- 4
      }
      current_year <- init_year + floor((3 + j - 1) / 4)
      colname <- c(colname, paste(as.character(current_year), "_" ,"Q", sep = "", as.character(domain[current_index])))
    }
    colnames(predictions) <- colname
    prediction1 <- as.data.frame(predictions)
    prediction1$Geography <- Geo
    prediction1$Industry <- Indus
    prediction <- prediction1[, c(forecast.time + 1, forecast.time + 2, 1:forecast.time)]
    write.csv(prediction, file = "prediction_opening.csv")
    
  } else if (variable == "Closing") {
    forecast.time <- forecast.time + 1
    for (i in 1:95) {
      newhope <- data$Closing[((i-1)*71+1):(i*71)]
      newhope <- ts(newhope,frequency = 4)
      newhope <- na.omit(newhope)
      myhope <- ts(newhope,frequency = 4)
      model1 <- auto.arima(myhope)
      a <- forecast(model1,h=forecast.time)
      jpeg(paste("forecast_", variable,"_",data$NAICS_Codes[i*71], "_", data$Geography[i*71],".jpg", sep = ""))
      plot(a)
      dev.off()
      con <- c(round(a$mean))
      predictions <- rbind(predictions,con)
      Indus <- c(Indus,as.character(data$NAICS_Codes[(71*i)]))
      Geo <- c(Geo,as.character(data$Geography[(71*i)]))
    }
    row.names(predictions) <- NULL
    colname <- NULL
    domain <- c(1,2,3,4)
    init_year <- 2017
    for (j in 1:forecast.time) {
      current_index <- (4 + j - 1) %% 4
      if (current_index == 0) {
        current_index <- 4
      }
      current_year <- init_year + floor((3 + j - 1) / 4)
      colname <- c(colname, paste(as.character(current_year), "_" ,"Q", sep = "", as.character(domain[current_index])))
    }
    colnames(predictions) <- colname
    prediction1 <- as.data.frame(predictions)
    prediction1$Geography <- Geo
    prediction1$Industry <- Indus
    prediction <- prediction1[, c(forecast.time + 1, forecast.time + 2, 1:forecast.time)]
    write.csv(prediction, file = "prediction_closing.csv")
    
  } else if (variable == "Active") {
    for (i in 1:95) {
      newhope <- data$Active[((i-1)*71+1):(i*71)]
      newhope <- ts(newhope,frequency = 4)
      newhope <- na.omit(newhope)
      myhope <- ts(newhope,frequency = 4)
      model1 <- auto.arima(myhope)
      a <- forecast(model1,h=forecast.time)
      jpeg(paste("forecast_", variable,"_",data$NAICS_Codes[i*71], "_", data$Geography[i*71],".jpg", sep = ""))
      plot(a)
      dev.off()
      con <- c(round(a$mean))
      predictions <- rbind(predictions,con)
      Indus <- c(Indus,as.character(data$NAICS_Codes[(71*i)]))
      Geo <- c(Geo,as.character(data$Geography[(71*i)]))
    }
    row.names(predictions) <- NULL
    colname <- NULL
    domain <- c(1,2,3,4)
    init_year <- 2017
    for (j in 1:forecast.time) {
      current_index <- (4 + j - 1) %% 4
      if (current_index == 0) {
        current_index <- 4
      }
      current_year <- init_year + floor((3 + j - 1) / 4)
      colname <- c(colname, paste(as.character(current_year), "_" ,"Q", sep = "", as.character(domain[current_index])))
    }
    colnames(predictions) <- colname
    prediction1 <- as.data.frame(predictions)
    prediction1$Geography <- Geo
    prediction1$Industry <- Indus
    prediction <- prediction1[, c(forecast.time + 1, forecast.time + 2, 1:forecast.time)]
    write.csv(prediction, file = "prediction_active.csv")
    
  } else {
    print("Usage: variable = {Exit, Entry, Opening, Closing, Active}")
  }
}

timeseries.predict(mydat, variable = "Exit", forecast.time = 8)
timeseries.predict(mydat, variable = "Entry", forecast.time = 8)
timeseries.predict(mydat, variable = "Opening", forecast.time = 8)
timeseries.predict(mydat, variable = "Closing", forecast.time = 8)
timeseries.predict(mydat, variable = "Active", forecast.time = 8)
