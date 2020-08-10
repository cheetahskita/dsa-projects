library(shiny)
library(shinydashboard)
library(tidyverse)

setwd('C:/Users/moth1/OneDrive/Documents/dsa-projects/2-shiny-app')
df.tot = read_csv("server.csv",
                  col_types = cols(year = col_factor()))

country.list = df.tot %>% 
  select(country) %>% 
  group_by(country) %>% 
  filter(n() > 20) %>% 
  unique()

response.list = names(df.tot)
  # c("Do you have a family history of mental illness?",
  #                 "Do you currently have a mental health condition?",
  #                 "Have you sought treatment for a mental health condition?",
  #                 "If you have a condition, do you feel that it interferes with your work?",
  #                 "Does your employer provide mental health benefits?",
  #                 "Do you know the options for mental health care your employer provides?",)
