#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# 

 library(shiny)
 library(ggplot2)



function(input, output, session) {
      output$scatterplot <- renderPlot({
            ggplot(mtcars, aes_string(x = input$x_var, y = input$y_var)) +
                  geom_point() +
                  xlab(input$x_var) +
                  ylab(input$y_var) +
                  ggtitle("Scatterplot of mtcars")
      })
}
