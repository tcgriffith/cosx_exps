---
title: "Untitled"
author: "TC"
date: "7/23/2018"
output: html_document
---



## R Markdown



```r
library(trelliscopejs)
library(ggplot2)
library(dplyr)
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
library(tidyr)
library(rbokeh)

d <- mpg %>%
  group_by(manufacturer, class) %>%
  nest() %>%
  mutate(panel = map_plot(data,
    ~ figure(xlab = "City mpg", ylab = "Highway mpg") %>%
        ly_points(cty, hwy, data = .x)))

tmp <- d %>%
  trelliscope(name = "city_vs_highway_mpg1", self_contained = TRUE)
```

```
## ```

```
## writing panels [=>------------------------] 8% 3/37 eta: 7s writing
## panels [==>-----------------------] 11% 4/37 eta: 6s writing
## panels [===>----------------------] 14% 5/37 eta: 5s writing
## panels [===>----------------------] 16% 6/37 eta: 4s writing
## panels [====>---------------------] 19% 7/37 eta: 3s writing
## panels [=====>--------------------] 22% 8/37 eta: 3s writing
## panels [=====>--------------------] 24% 9/37 eta: 3s writing
## panels [======>------------------] 27% 10/37 eta: 3s writing
## panels [======>------------------] 30% 11/37 eta: 2s writing
## panels [=======>-----------------] 32% 12/37 eta: 2s writing
## panels [========>----------------] 35% 13/37 eta: 2s writing
## panels [========>----------------] 38% 14/37 eta: 2s writing
## panels [=========>---------------] 41% 15/37 eta: 2s writing
## panels [==========>--------------] 43% 16/37 eta: 2s writing
## panels [==========>--------------] 46% 17/37 eta: 1s writing
## panels [===========>-------------] 49% 18/37 eta: 1s writing
## panels [============>------------] 51% 19/37 eta: 1s writing
## panels [=============>-----------] 54% 20/37 eta: 1s writing
## panels [=============>-----------] 57% 21/37 eta: 1s writing
## panels [==============>----------] 59% 22/37 eta: 1s writing
## panels [===============>---------] 62% 23/37 eta: 1s writing
## panels [===============>---------] 65% 24/37 eta: 1s writing
## panels [================>--------] 68% 25/37 eta: 1s writing
## panels [=================>-------] 70% 26/37 eta: 1s writing
## panels [=================>-------] 73% 27/37 eta: 1s writing
## panels [==================>------] 76% 28/37 eta: 1s writing
## panels [===================>-----] 78% 29/37 eta: 0s writing
## panels [===================>-----] 81% 30/37 eta: 0s writing
## panels [====================>----] 84% 31/37 eta: 0s writing panels
## [=====================>---] 86% 32/37 eta: 0s building display obj
## [=====================>---] 89% 33/37 eta: 0s writing cognostics
## [======================>--] 92% 34/37 eta: 0s empty thumbnail
## [=======================>-] 95% 35/37 eta: 0s writing display list
## [=======================>-] 97% 36/37 eta: 0s writing app config
## [=========================] 100% 37/37 eta: 0s
```



```r
mpg %>%
  group_by(manufacturer, class) %>%
  summarise(
    mean_city_mpg = cog(mean(cty), desc = "Mean city mpg"),
    mean_hwy_mpg = cog(mean(hwy), desc = "Mean highway mpg"),
    panel = panel(
      figure(xlab = "City mpg", ylab = "Highway mpg",
        xlim = c(7, 37), ylim = c(9, 47)) %>%
        ly_points(cty, hwy,
          hover = data_frame(model = paste(year, model),
            cty = cty, hwy = hwy)))) %>%
  trelliscope(name = "city_vs_highway_mpg2", nrow = 1, ncol = 2,
              self_contained = TRUE)
```

```
## writing panels [===>----------------------] 14% 5/37 eta: 1s
## writing panels [===>----------------------] 16% 6/37 eta: 2s
## writing panels [====>---------------------] 19% 7/37 eta: 2s
## writing panels [=====>--------------------] 22% 8/37 eta: 2s
## writing panels [=====>--------------------] 24% 9/37 eta: 2s
## writing panels [======>------------------] 27% 10/37 eta: 1s
## writing panels [======>------------------] 30% 11/37 eta: 2s
## writing panels [=======>-----------------] 32% 12/37 eta: 2s
## writing panels [========>----------------] 35% 13/37 eta: 1s
## writing panels [========>----------------] 38% 14/37 eta: 1s
## writing panels [=========>---------------] 41% 15/37 eta: 1s
## writing panels [==========>--------------] 43% 16/37 eta: 1s
## writing panels [==========>--------------] 46% 17/37 eta: 1s
## writing panels [===========>-------------] 49% 18/37 eta: 1s
## writing panels [============>------------] 51% 19/37 eta: 1s
## writing panels [=============>-----------] 54% 20/37 eta: 1s
## writing panels [=============>-----------] 57% 21/37 eta: 1s
## writing panels [==============>----------] 59% 22/37 eta: 1s
## writing panels [===============>---------] 62% 23/37 eta: 1s
## writing panels [===============>---------] 65% 24/37 eta: 1s
## writing panels [================>--------] 68% 25/37 eta: 1s
## writing panels [=================>-------] 70% 26/37 eta: 1s
## writing panels [=================>-------] 73% 27/37 eta: 1s
## writing panels [==================>------] 76% 28/37 eta: 0s
## writing panels [===================>-----] 78% 29/37 eta: 0s
## writing panels [===================>-----] 81% 30/37 eta: 0s writing
## panels [====================>----] 84% 31/37 eta: 0s writing panels
## [=====================>---] 86% 32/37 eta: 0s building display obj
## [=====================>---] 89% 33/37 eta: 0s writing cognostics
## [======================>--] 92% 34/37 eta: 0s empty thumbnail
## [=======================>-] 95% 35/37 eta: 0s writing display list
## [=======================>-] 97% 36/37 eta: 0s writing app config
## [=========================] 100% 37/37 eta: 0s
```

preserve497a71b7a81a5c1a

