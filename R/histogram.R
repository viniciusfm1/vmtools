#' @export
histogram <- function(data, x = "Valores", y = "Frequência", bins = as.integer(1 + log2(length(data)))){

    library(ggplot2)

    plot <- ggplot(data = NULL, aes(data)) + 
            geom_histogram(bins = bins, fill = "#748CAB", color = "#011936") +
            labs(title = "Histograma", x = x, y = y) +
            theme(
                plot.title = element_text(family = "Arial", size = 18, face = "bold", hjust = 0.5, margin = margin(t = 30, b = 30)),
                plot.margin = margin(r = 25, l = 25),
                axis.text = element_text(size = 12),
                axis.title.x = element_text(family = "Arial", size = 14),
                axis.title.y = element_text(family = "Arial", size = 14),
                panel.background = element_rect(fill = "#FDFFFC")
            )
    return(plot)
}
