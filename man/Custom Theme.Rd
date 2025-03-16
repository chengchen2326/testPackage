#' My Custom ggplot2 Theme
#'
#' This function returns a ggplot2 theme that modifies a standard base theme
#' with at least three customizations.
#'
#' @return A ggplot2 theme object.
#' @import ggplot2
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(mpg, aes(displ, hwy)) +
#'   geom_point() +
#'   my_theme()
my_theme <- function() {
  # Start with a base theme (theme_minimal)
  theme_minimal(base_size = 14) +
    theme(
      # 1) Customize title: Bold, larger size, and centered
      plot.title = element_text(face = "bold", hjust = 0.5, size = 16),

      # 2) Change the background color of the plot panel
      panel.background = element_rect(fill = "gray95", color = NA),

      # 3) Customize axis text and titles
      axis.title = element_text(face = "bold", color = "black"),
      axis.text = element_text(color = "blue", size = 12),

      # Additional customizations
      legend.position = "bottom",  # Move legend to bottom
      panel.grid.major = element_line(color = "gray80"), # Lighten major gridlines
      panel.grid.minor = element_blank() # Remove minor gridlines
    )
}
