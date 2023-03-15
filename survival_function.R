(rexp(5e2) ->x) # simulate some exponential times, none censored

library(survival)
survfit(Surv(x, rep(1, length(x))) ~ 1) |>
  plot()

# Compare to PDF (upper left, cdf, lower right)
fitdistrplus::fitdist(x, "exp") |>
  plot()

library(muhaz)
plot(muhaz(x), ylim = c(0, 3))
