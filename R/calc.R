#' Calc
#'
#' @param p1 preço produto 1
#' @param q1 quantidade produto 1
#' @param p2 preço produto 2
#' @param q2 quantidade produto 2
#'
#' @export
calc <- function(p1, q1, p2, q2){
    x <- p1/q1
    y <- p2/q2
    z <- which.min(c(x,y))
    
    if(any(all((p1 == p2), (q1 == q2)), x==y)){
        msg <- paste0("Não existe diferença entre os produtos.")
    } else {
        msg <- paste0("O produto ", z, " é mais vantajoso.")
    }
    
    return(msg)
}
