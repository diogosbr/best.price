#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
    tagList(
        # Leave this function for adding external resources
        golem_add_external_resources(),
        # Your application UI logic
        fluidPage(
            titlePanel("best.price", "best.price"),
            
            h2("Produto 1"),
            numericInput("p1", value = NULL, label = "Preço"),
            numericInput("q1", value = NULL, label = "Quantidade"),
            
            h2("Produto 2"),
            numericInput("p2", value = NULL, label = "Preço"),
            numericInput("q2", value = NULL, label = "Quantidade"),
            
            h2("Resultado"),
            actionButton("ok", "OK"),
            tableOutput("resultado")
        )
    )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
    add_resource_path(
        "www",
        app_sys("app/www")
    )
    
    tags$head(
        favicon(),
        bundle_resources(
            path = app_sys("app/www"),
            app_title = "best.price"
        )
        # Add here other external resources
        # for example, you can add shinyalert::useShinyalert()
    )
}
