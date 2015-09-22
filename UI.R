library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Tooth Growth prediction"),
    
    # Sidebar with a slider input for the number of bins
    sidebarLayout(
        sidebarPanel(
            h3("Input parameters for tooth growth:"),
            radioButtons("supp","Supplement (OJ=Orange Juice, VC=Vitamin C):",c("OJ","VC")),
            sliderInput("dose", "Dosage (in milligrams):", min = 0, max = 3, step = 0.1, value=1)
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            includeMarkdown("README.md"),
            br(),
            h4("Result"),
            h5("The prediction tooth growth length based on chosen supplement and dosage is as below:"),
            verbatimTextOutput("len")
        )
    )
))