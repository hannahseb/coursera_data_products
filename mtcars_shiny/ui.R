#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# It plots a scatterplot for the variables mpg, hp, cyl, disp of mtcars dataset
#


library(shiny)
library(ggplot2)
data(mtcars)

fluidPage(
      titlePanel("Scatterplot of mtcars"),
      sidebarLayout(
            sidebarPanel(
                  radioButtons("y_var", "Select Y-axis variable:",
                               choices = c("mpg", "hp")),
                  radioButtons("x_var", "Select X-axis variable:",
                               choices = c("cyl", "disp"))
            ),
            mainPanel(
                  plotOutput("scatterplot")
            )
      )
)
