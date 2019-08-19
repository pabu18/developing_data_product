server<-function(input,output){
  predict<-eventReactive(input$done,{
    mtcars[,input$predict]
  })
  color<-eventReactive(input$done,{
    mtcars[,input$color]
  })
  output$plot1<-renderPlotly({
    
    plot_ly(x=predict(),y=mtcars$mpg,mode="markers",color=color() )
    
  })
  
  
}     

shinyApp(ui,server)