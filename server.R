
library(shiny)

## calculate BMI 
calc_bmi <- function(measure, wt, ht) {
    wt_num <- as.numeric(wt)
    ht_num <- as.numeric(ht)
    
    if (measure == "std")   bmi <- wt_num/(ht_num^2)*703 
    else  bmi <- wt_num/(ht_num^2)
}

shinyServer(
    function(input, output) {
        bmi <- reactive({ calc_bmi(input$rdbtn, input$wt, input$ht) })
        output$BMI <- renderText({bmi()})
    }
)

