#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
    
    # output$resultado <- renderText({paste0("O produto ", 
    #                                        calc(p1 = input$p1, q1 = input$q1, 
    #                                             p2 = input$p2, q2 = input$q2), 
    #                                        " é mais vantajoso.")})
    resultado_reativo <- eventReactive(input$ok, {
        calc(p1 = input$p1, q1 = input$q1, 
             p2 = input$p2, q2 = input$q2)
    })
        
        output$resultado <- renderText({resultado_reativo()})
}