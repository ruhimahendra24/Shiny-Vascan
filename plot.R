library(plotly)

auth_plot <- read.csv('name_according.csv')
plot_ly(auth_plot, labels = ~Tag, values = ~Count, type = 'pie',
        insidetextfont = list(color = '#FFFFFF' ))%>%
  layout(title = "Matched Names in Vascan sourved from FNA vs. Others",
         xaxis = list(showgrid = FALSE, zeroline= FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline= FALSE, showticklabels = FALSE))


match_plot <- read.csv('Match.csv')
plot_ly(match_plot, x = ~Count, y = ~Match, type = 'bar', name = 'Names in FNA that have match in VASCAN')%>%
  layout(title = 'Names in FNA that have match in VASCAN',
       xaxis = list(title ='Number of Matches/Mismatches', showgrid = FALSE, zeroline= FALSE, showticklabels = FALSE),
       yaxis = list(title = 'Match', showgrid = FALSE, zeroline= FALSE, showticklabels = FALSE))

status_plot <- read.csv('status.csv')
plot_ly(status_plot, labels = ~TaxonicStatus, values = ~Status, type = 'pie',
        insidetextfont = list(color = '#FFFFFF' ))%>%
  layout(title = "Taxonomic Status for the Matches",
         xaxis = list(showgrid = FALSE, zeroline= FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline= FALSE, showticklabels = FALSE))
