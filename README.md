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

## Final Output

Here are some screen shots of the final dashboard: 

<img width="928" alt="1" src="https://user-images.githubusercontent.com/65621746/91585662-599f6680-e922-11ea-936d-be37a32d7004.PNG">

<img width="923" alt="2" src="https://user-images.githubusercontent.com/65621746/91585857-98cdb780-e922-11ea-85ba-3bf089217efa.PNG">

<img width="605" alt="3" src="https://user-images.githubusercontent.com/65621746/91585876-a1be8900-e922-11ea-83ff-2738f953f960.PNG">





