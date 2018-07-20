---
title: "Steve's Xaringan Presentation"
subtitle: "POSC 0000 -- It Would Be Cool If This Were an Actual Class Presentation"
author: "Steven V. Miller<br /> <br /> <br /> Department of Political Science"
institute: Department of Political Science
output:
  xaringan::moon_reader:
    css: ["default", "svm-xaringan-style.css"]
    lib_dir: libs
    nature:
      highlightStyle: github
      highlightLines: true


---

<style>
.remark-slide-number {
  position: inherit;
}

.remark-slide-number .progress-bar-container {
  position: absolute;
  bottom: 0;
  height: 2px;
  display: block;
  left: 0;
  right: 0;
}

.remark-slide-number .progress-bar {
  height: 100%;
  background-color: red;
}
</style>




```r
grViz("graph TD;
           A-->B;
           A-->C;
           B-->D;
           C-->D
           ")
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-1.png)


---


Here's a simple ultimatum game, a la Fearon (1995). Done via `DiagrammeR`.

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2-1.png)




