  library(data.table)

  lin_dat <- data.table(ex1 = round(rnorm(100, 1:10, sd = 1),2),
                        ex2 = round(rnorm(100, 10:1, sd = 1),2),
                        ex3 = round(rnorm(100, 1:5, sd = .5),2),
                        wye = round(rnorm(100, 1:10, sd = 1),2))
  
  plot(wye~ex1, data= lin_dat)
  plot(wye~ex2, data= lin_dat)
  plot(wye~ex3, data= lin_dat)
  
  
  lm(wye ~ ex1 + ex2 + ex3, data = lin_dat)
  