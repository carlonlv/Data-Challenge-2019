library("forecast")
mydat <- read.csv("~/GitHub/Data-Challenge-2019/data/Data_wide_ENG.csv")
timeseries.predict <- function(data, variable, forecast.time) {
  predictions <- NULL
  Indus <- NULL
  Geo <- NULL
  if (variable == "Exit") {
    for (i in 1:95) {
      newhope <- data$Exit[((i-1)*71+1):(i*71)]
      newhope <- ts(newhope,frequency = 4)
      newhope <- na.omit(newhope)
      myhope <- ts(newhope,frequency = 4)
      model1 <- auto.arima(myhope)
      a <- forecast(model1,h=forecast.time)
      jpeg(paste("forecast_", variable,"_",i,".jpg", sep = ""))
      plot(a)
      dev.off()
      con <- c(round(a$mean))
      predictions <- rbind(predictions,con)
      Indus <- c(Indus,as.character(data$NAICS_Codes[(71*i)]))
      Geo <- c(Geo,as.character(data$Geography[(71*i)]))
    }
    row.names(predictions) <- NULL
    colname <- NULL
    for (j in 1:forecast.time) {
      colname <- c(colname, paste("Q", sep = "", as.character(j)))
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
      jpeg(paste("forecast_", variable,"_",i,".jpg", sep = ""))
      plot(a)
      dev.off()
      con <- c(round(a$mean))
      predictions <- rbind(predictions,con)
      Indus <- c(Indus,as.character(data$NAICS_Codes[(71*i)]))
      Geo <- c(Geo,as.character(data$Geography[(71*i)]))
    }
    row.names(predictions) <- NULL
    colname <- NULL
    for (j in 1:forecast.time) {
      colname <- c(colname, paste("Q", sep = "", as.character(j)))
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
      jpeg(paste("forecast_", variable,"_",i,".jpg", sep = ""))
      plot(a)
      dev.off()
      con <- c(round(a$mean))
      predictions <- rbind(predictions,con)
      Indus <- c(Indus,as.character(data$NAICS_Codes[(71*i)]))
      Geo <- c(Geo,as.character(data$Geography[(71*i)]))
    }
    row.names(predictions) <- NULL
    colname <- NULL
    for (j in 1:forecast.time) {
      colname <- c(colname, paste("Q", sep = "", as.character(j)))
    }
    colnames(predictions) <- colname
    prediction1 <- as.data.frame(predictions)
    prediction1$Geography <- Geo
    prediction1$Industry <- Indus
    prediction <- prediction1[, c(forecast.time + 1, forecast.time + 2, 1:forecast.time)]
    write.csv(prediction, file = "prediction_opening.csv")
    
  } else if (variable == "Closing") {
    for (i in 1:95) {
      newhope <- data$Closing[((i-1)*71+1):(i*71)]
      newhope <- ts(newhope,frequency = 4)
      newhope <- na.omit(newhope)
      myhope <- ts(newhope,frequency = 4)
      model1 <- auto.arima(myhope)
      a <- forecast(model1,h=forecast.time)
      jpeg(paste("forecast_", variable,"_",i,".jpg", sep = ""))
      plot(a)
      dev.off()
      con <- c(round(a$mean))
      predictions <- rbind(predictions,con)
      Indus <- c(Indus,as.character(data$NAICS_Codes[(71*i)]))
      Geo <- c(Geo,as.character(data$Geography[(71*i)]))
    }
    row.names(predictions) <- NULL
    colname <- NULL
    for (j in 1:forecast.time) {
      colname <- c(colname, paste("Q", sep = "", as.character(j)))
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
      jpeg(paste("forecast_", variable,"_",i,".jpg", sep = ""))
      plot(a)
      dev.off()
      con <- c(round(a$mean))
      predictions <- rbind(predictions,con)
      Indus <- c(Indus,as.character(data$NAICS_Codes[(71*i)]))
      Geo <- c(Geo,as.character(data$Geography[(71*i)]))
    }
    row.names(predictions) <- NULL
    colname <- NULL
    for (j in 1:forecast.time) {
      colname <- c(colname, paste("Q", sep = "", as.character(j)))
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