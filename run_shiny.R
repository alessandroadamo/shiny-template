library(shiny)

rm(list = ls())

df <- data.frame(
        Label = c("val1", "val2", "val3", "val4", "val5"), 
        KPI1 = runif(5, 0, 10),
        KPI2 = runif(5, 0, 10),
        KPI3 = runif(5, 0, 10),
        KPI4 = runif(5, 0, 10),
        KPI5 = runif(5, 0, 10)
    )

setwd("/home/user/Documents/shiny-template")

runApp(
    # host = getOption("shiny.host", "10.0.2.15"),
    # port = 12345
  )
