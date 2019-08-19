library(shiny)
library(plotly)
library(miniUI)
data(mtcars)
ui<-fluidPage(
  gadgetTitleBar("Developing Data Product week 4 Project"),
  radioButtons("predict","plot mpg with which variable",choices=c("cyl","disp","hp","drat","wt","qsec","vs","am","gear","carb")),
  radioButtons("color","Select Variabel For color",choices=c("cyl","disp","hp","drat","wt","qsec","vs","am","gear","carb")),
  plotlyOutput("plot1") 
  
)
