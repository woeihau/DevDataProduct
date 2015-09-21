library(shiny)
data(ToothGrowth)

# Tooth Growth Prediction
shinyServer(function(input, output) {
    output$len <- renderText({
    # This project is about creating a simple shiny apps that allows us to predict the possible length of tooth growth based on the dosage input and supplement input.
    #	 supp	 factor	 Supplement type (Orange Juice(OJ) or Vitamin C(VC)).
    #	 dose	 numeric	 Dose in milligrams.
    
    # Train the tooth length model
    LENModel <- lm(len ~ supp + dose, data=ToothGrowth)
    
    # Predict the tooth length model based on input
    PredictLen <- predict(LENModel, data.frame(supp=input$supp, dose=input$dose))
    PredictLen
    })
})