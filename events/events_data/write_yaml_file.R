
library(yaml)
library(googlesheets4)
library(tidyverse)

# source functions --------------------------------------------------------

source(here::here("R/df_to_yaml.R"))

# read data ---------------------------------------------------------------

read_sheet("https://docs.google.com/spreadsheets/d/1VhXDQ1WRkBV9qfMF0w0R9dYKHCWq9To-ml4KGExl204/edit?gid=0#gid=0") |>
    write_csv(here::here("events/events_data/tbl-06-fairqual-events.csv"))

events <- read_csv(here::here("events/events_data/tbl-06-fairqual-events.csv")) |>
    mutate(date = lubridate::as_date(date)) |>
    rename(path = site_url)

# functions

df_to_yaml(events, here::here("events/events_data/events.yml"))
