#' Custom ggplot2 theme
#'
#' A custom ggplot2 theme!
#' @param base_size
#' @param base_family
#' @export
#' @examples
#' ggplot2::theme_set(afr.ggtheme())
afr.ggtheme <- function(){
  require(ggplot2)
  #require(ggthemes)
  ggtheme <- function (base_size = 12, base_family = "sans", ...){
  ret <- theme_bw(base_family = base_family, base_size = base_size) +
    theme(legend.background = element_blank(),
          legend.key = element_blank(),
          panel.background = element_blank(),
          panel.border = element_rect(),
          panel.grid.minor = element_blank(),
          panel.grid.major = element_line(color="grey80", linetype="dashed"),
          strip.background = element_blank(),
          plot.background = element_blank(),
          plot.title = element_text(hjust=0.5, size=base_size+2),
          axis.line = element_line(),
          axis.ticks = element_line(),
          axis.text=element_text(size=base_size),
          axis.title=element_text(size=base_size+2,face="bold"),...)
    return(ret)
  }
  ggplot2::theme_set(ggtheme())
  update_geom_defaults("bar",   list(color="black", fill = "grey80"))
}
