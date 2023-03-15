library(ggplot2)
# A visual of left, interval, and right censoring.
# Inspired by Statistical Methods for Reliability Data 1
# By Meeker & Escobar, p.37


ggplot() +
  # The full distribution
  stat_function(fun = dweibull,
                args = list(shape = 1.5,
                            scale = 1),
                geom = "area",
                fill = "purple3", color = "black") +
  # right censored, bc we only observe the left portion
  # of the distribution
  stat_function(fun = dweibull,
                args = list(shape = 1.5,
                            scale = 1),
                geom = "area",
                fill = "turquoise3",
                color = "black",
                xlim = c(1.5, 4)) +
  # left censored, bc we only observe the right portion
  # of the distribution
  stat_function(fun = dweibull,
                args = list(shape = 1.5,
                            scale = 1),
                geom = "area",
                fill = "orange3",
                color = "black",
                xlim = c(0, 0.25)) +
  xlim(0, 4) +
  ylab("") +
  theme_minimal()



