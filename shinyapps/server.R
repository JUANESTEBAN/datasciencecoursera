bodymassindex<-function(weight,height) weight/((height)^2)

shinyServer(
  function(input,output){
    output$inputValue1<-renderPrint({input$weight})
    output$inputValue2<-renderPrint({input$height})
    output$prediction<-renderPrint({bodymassindex(input$weight,input$height)})
  }
)