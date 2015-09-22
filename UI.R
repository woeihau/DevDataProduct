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
            h4("Description"),
            p("This is a simple application showing the possible tooth growth length based on two input: supplement & dosage"),
            br(),
            h4("Result"),
            h5("The prediction tooth growth length based on chosen supplement and dosage is as below:"),
            verbatimTextOutput("len"),
            br(),
            h4("About"),
            p("Welcome to Tooth Growth prediction app."),
p("This apps is developed for Coursera Develop Data Product course."),
p("This app predicts the tooth length based on its supplement, and dosage."),
p("I use ToothGrowth dataset for this prediction."),
p("It is hosted on ShinyApps"),
p("R Presentation can be found on "), tags$a(href="http://rpubs.com/woeihau/110774", "RPubs"),
p("Source code for UI.R and server.R can be found on GitHub repository"),
p("Refer to my presentation for the link to various URL.")
        )
    )
))