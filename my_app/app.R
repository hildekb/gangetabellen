# This is the main file

library(shiny)
library(bslib)

ui <- page_sidebar(
  title = "Øve på gangetabellen",
  sidebar = sidebar(
    radioButtons(
      inputId = 'n_stk',
      label = 'Velg antall regnestykker:',
      choices = c('5','10','15'),
      selected = '15'
    )
  ),
  "Regn ut og sjekk svarene",
  
  mainPanel(
    textOutput(outputId = 'AntallStykker'),
  )
  
) 

# -----------------

server = function(input,output, session){
    output$AntallStykker = renderText({paste0('Du valgte ',input$n_stk,' regnestykker')}
                
    
  )
}

shinyApp(ui = ui, server = server)
