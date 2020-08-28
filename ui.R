library(shiny)
library(shinydashboard)
library(plotly)
library(shinyWidgets)


shinyUI(
  dashboardPage( #Create main dashboard
    skin = "green",
    dashboardHeader(title= "Validating taxa in FNA with taxa in Vascan", titleWidth = 450),
    dashboardSidebar(width = 450, #Create side bar
      sidebarMenu( #Create sidebar menu
      menuItem("Home", tabName = "home", icon=icon("home")),
      menuItem("Data", tabName = "data", icon=icon("table") ),
      menuItem("Authorization", tabName = "authorization", icon = icon("signature")),
      menuItem("Number of Matches", tabName = "numberofmatches", icon= icon("equals")),
      menuItem("Status", tabName = "status", icon = icon("check")))
    ),
    dashboardBody( #Create the body for each menu item
      tabItems(
        tabItem(tabName = "home",
                fluidPage(
                  mainPanel(width = 12, p("The purpose of this project is to search the taxa that are present in FNA with those that are present in the VASCAN API. If there is a match, we can determine if the matched taxon from FNA is an accepted name used in VASCAN or a synonym. The output of this project returns a CSV file that tells us if there has been a match for every taxon in FNA and what is the status of the match.", style = "font-family: 'times'; font-si116pt"))
                )
        ),
        tabItem(tabName = "data",
                fluidPage(
                 mainPanel(width = 12, div(style = 'overflow: scroll',tableOutput("tablefile"))
                  
                  )
                
      )
      ),
      tabItem(tabName = "authorization",
              fluidPage(setBackgroundColor("LightGray"),
                mainPanel(box( title = 'pie chart', column(plotlyOutput("authplot"), width = 12), width = 12),
                          box( title = "others", tableOutput('other'), width = 12)
                          )
              )
              ),
      tabItem(tabName = "numberofmatches",
              fluidPage(
                mainPanel(box(title = 'bar graph', column(plotlyOutput("matchplot"), width = 12), width =12),
                          box( title = "Match Count", tableOutput('matchcount'), width = 12)
                )
              )
              ),
      tabItem(tabName = "status",
              fluidPage(
                mainPanel(box(title = 'pie chart', column(plotlyOutput("statusplot"), width = 12), width =12),
                           box( title = "Status", tableOutput('statuscount'), width = 12)
                )
              )
              )
      
      
    
 )
)
)
)