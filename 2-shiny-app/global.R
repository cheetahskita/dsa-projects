library(shiny)
library(tidyverse)

df.tot = read_csv("server.csv",
                  col_types = cols(year = col_factor()))