library(muhaz)
1e5 -> N

# Exponential distribution
# Constant hazard
# expected value ~ 12
rexp(N, rate = 1/12) |>
  pehaz(width = 1, max.time = 12) |>
  plot(ylim = c(0, 0.25),
       # main = "Hazard functions: decreasing, constant, increasing, fluctuating?",
       lwd = 5)

# Weibull distribution
# expected value ~ 12,
# scale = mu / gamma(1 + 1/shape)

# Decreasing hazard
0.6 -> weibull_shape
(12 / gamma(1 + 1 /  weibull_shape) -> weibull_scale)

rweibull(N, shape = 0.7, scale = weibull_scale) |>
  pehaz(width = 1, max.time = 12) |>
  lines(col = "blue", lwd = 5, lty = 1)

# Increasing hazard
4 -> weibull_shape
(12 / gamma(1 + 1 /  weibull_shape) -> weibull_scale)

rweibull(N, shape = weibull_shape, scale = weibull_scale) |>
  pehaz(width = 1, max.time = 12) |>
  lines(col = "green", lwd = 5, lty = 1)


