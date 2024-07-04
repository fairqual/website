# header ------------------------------------------------------------------

# This script accesses the tables stored as Google Sheets which contain data
# for the proposal. Google Sheets are edited manually and data is then read
# from here and stored locally as CSVs.

# library -------------------------------------------------------------------

library(googlesheets4)
library(readr)
library(dplyr)

# script ------------------------------------------------------------------

## tbl-01-work-packages --------------------------------------------------

## Note: Update the Google Sheet ID with your copy of the table

read_sheet("16kp07lznZkFkLRb24M7zXG0vL5r4hSt27JalfAdPvdE") |> 
  write_csv(here::here("data/tables/tbl-01-work-packages.csv"))

## tbl-02-wp-activities-research-questions.csv ------------------------------

## Note: Update the Google Sheet ID with your copy of the table

read_sheet("14kl5jumfwk3jwxwrnJEz9Jvnui9vl-gOpq2utZIN7X0") |> 
  write_csv(here::here("data/tables/tbl-02-wp-activities-research-questions.csv"))

## tbl-03-eth-ord-budget-templa-----------------------------------------------

## copy/paste the final budget table into the DOCX template
## Note: Update the Google Sheet ID with your copy of the table

read_sheet("1gfrfrA2YSvGw-g5xlu0gbNUbwBkHLEhPfcJqdxDYl5g") |> 
  write_csv(here::here("data/tables/tbl-03-eth-ord-budget-template.csv"))

## tbl-04-budget-justification -----------------------------------------------

## copy/paste the final budget table into the DOCX template
## Note: Update the Google Sheet ID with your copy of the table

read_sheet("1Uz2WD40kABFgsKZbeqpFFqahz1dOiKY3yDpJDg1dwVw") |> 
  write_csv(here::here("data/tables/tbl-04-budget-justification.csv"))

## tbl-05-research-questions

read_sheet("1AboYD0mnMTZDZ_h6pbXeX4fBK57b2VJlQibvx8fhB14") |> 
  write_csv(here::here("data/tables/tbl-05-research-questions.csv"))



