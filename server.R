library(shiny)
library(shinydashboard)
library(DT)

shinyServer(function(input,output){
  
  mydata <- reactive({
    
    tbl <- read.csv('Canada_Taxa_wide.csv')
    return(tbl)
  }) #Create a datatable for the "data" tab
  
  
  #import CSV files to create the charts
  auth_plot <- read.csv('name_according.csv') 
  match_plot <- read.csv('Match.csv')
  status_plot <- read.csv('status.csv')
  
  
 
  output$tablefile <- renderTable({
    

   mydata()
    
    
  }) #output the datafile
  
  output$authplot <- renderPlotly({
    plot_ly(auth_plot, labels = ~Tag, values = ~Count, marker= list(colors = c('#075E2F', '#0C9AA0')), type = 'pie',
            insidetextfont = list(color = '#FFFFFF' ))%>%
      layout(title = "Matched Names in Vascan sourced from FNA vs. Others",
             xaxis = list(showgrid = FALSE, zeroline= FALSE, showticklabels = FALSE),
             yaxis = list(showgrid = FALSE, zeroline= FALSE, showticklabels = FALSE))
  }) #output the pie chart using Plotly
  
  output$matchplot <- renderPlotly({
    plot_ly(match_plot, x = ~Count, y = ~Match,  type = 'bar', name = 'Names in FNA that have a match in VASCAN', marker =list(color = 'rgb(7,116,226)'))%>%
      layout(title = 'Names in FNA that have match in VASCAN',
             xaxis = list(title ='Number of Matches/Mismatches', showgrid = FALSE, zeroline= FALSE, showticklabels = FALSE),
             yaxis = list(title = 'Match', showgrid = FALSE, zeroline= FALSE, showticklabels = FALSE))
  
  }) #output the bar graph using Plotly
  
  output$statusplot <- renderPlotly({
    plot_ly(status_plot, labels = ~TaxonicStatus, values = ~Status, marker= list(colors = c('#075E2F', '#0C9AA0')), type = 'pie',
            insidetextfont = list(color = '#FFFFFF' ))%>%
      layout(title = "Taxonomic Status of Matched Taxa",
             xaxis = list(showgrid = FALSE, zeroline= FALSE, showticklabels = FALSE),
             yaxis = list(showgrid = FALSE, zeroline= FALSE, showticklabels = FALSE))
  }) #Output the pie chart using Plotly
    
  
  otherdata <- reactive({
    
    tbl <- read.csv('other.csv')
    return(tbl)
  }) #Create datatable
  
  output$other <- renderTable({
    
    
    otherdata()
    
    
  }) #Output the datatable
  
  match_count <- reactive({
    tbl <- read.csv('match_count.csv')
    return(tbl)
  }) #Create datatable
  
  output$matchcount <- renderTable({
    match_count()
    
  }) #output the datatable
  
  
  status_count <- reactive({
    tbl <- read.csv('status_count.csv')
    return(tbl)
  }) #create datatable
  
  output$statuscount <- renderTable({
    status_count()
    
  }) #output the datatable
  
  
 
})

