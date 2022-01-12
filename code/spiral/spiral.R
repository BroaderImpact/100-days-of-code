library(spiralize)
library(lubridate)

covid <- read.csv("/data/owid-covid-data.csv", stringsAsFactors = FALSE, quote="") # load data from github
us <- covid[covid$location == "United States" & !is.na(covid$new_cases_smoothed),] # limit to U.S. cases
us$dt <- strptime(us$date, format = "%Y-%m-%d") # create date-time column
us <- us[us$dt < "2022-01-07",] # to match NYT version
ymax <- max(us$new_cases_smoothed) # max cases
spiral_initialize_by_time(xlim=c("2020-01-01 00:00:00", "2022-01-06 00:00:00"), # initialize spiral
                          unit_on_axis = "days", period="years",
                          start=90, end=(709/365)*360+(28/365)*360+90,
                          flip="horizontal")
