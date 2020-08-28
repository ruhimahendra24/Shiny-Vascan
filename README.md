# Creating a shiny dashboard with charts to display FNA-VASCAN data 

## Project

The purpose of this project is to display important statistics on a Shiny from the data that was generated from this script: 

https://github.com/ruhimahendra24/Vascan

Here is the final product: 

https://ruhimahendra.shinyapps.io/Shiny/

## Dependencies

`R version 4.0.2`

R packages:

`shiny`
`shinydashboard`
`plotly`
`shinyWidgets`


## Repository

### Scripts

This repository contains two main scripts:

1) `ui.R`

The user interface definition is placed in this script.

2) `server.R`

The server function function definition is placed in this script.

This script was slightly modified from https://github.com/jocelynpender/fna-query/blob/master/R/src/query.R The function `ask_query_titles()` was modified to return a data frame.


### CSV files

To generate the charts and tables, multiple CSV files were imported in the `server.R` script. 
Here is a list of those files: 
`Canada_Taxa_Wide.csv`
`Match.csv`
`match_count.csv`
`name_according.csv`
`other.csv`
`status.csv`
`status_count.csv`



