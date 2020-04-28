library("tidyverse")
library("tidyr")
library("maps")
library(ggthemes)
library(mapproj)
library(tidyverse)
install.packages("data.table")
library(data.table)
library(dplyr)
library(purrr)
# Install the package
install.packages("lubridate")
# Load the package
library(lubridate)
install.packages("stocks")

trumptweets <- read.csv("trumptweets.csv")

summary(trumptweets)

na.omit(trumptweets) -> df

# Only considering tweets from his inaugration date till Dec 31 2019 as first death by corona happened in china on Dec 31
df$date=paste(as.Date(df$date,format ="%d/%m/%Y"))
df %>% 
filter(df$date >= as.Date("2016-01-20") & df$date<as.Date("2020-01-01")) -> df

nrow(df)

pacman::p_load(tidyquant, tidyverse, magrittr)
?stocks

stocks=tq_get(c("SPAB","DJI")) -> stocks










inner_join(zillow,cleanedcensusdata,by='Geographic.Area.Name') -> df