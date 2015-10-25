
library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Calculate Your Body Mass Index (BMI)!"),
    
    sidebarPanel(
        
        h4("Instruction to use this app:"),
        
        p("1. Choose the measure system you would like to use."),
        p("2. Input your weight and height.", span("Please pay attention to
          the units!", style = "color:red")),
        p("3. Click the Get Your BMI button, and your BMI will appear to the 
          right."),
        
        em("Note: Every time you update the weight and height, you must click 
            the Get Your BMI button to get the new BMI value."),
        
        br(),
        br(),
        
        radioButtons(inputId = "rdbtn", label = "Please choose the measure 
                     system for your weight and height:",
                     choices = c("Standard (in pounds and inches)" = "std",
                                 "Metric (in kilograms and meters)" = "mtr")),
        
        textInput(inputId="wt", label = "Input Your Weight:"),
        textInput(inputId="ht", label = "Input Your Height:"),
        
        submitButton("Get Your BMI")
    ),
    
    mainPanel(
        
        h4("Your Body Mass Index is:"),
        textOutput("BMI"),
        
        br(),
        br(),
        
        h4("BMI Interpretation Table:"),
        img(src="bmi.png")
    )
))
