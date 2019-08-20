---
title             : "测试中文"
shorttitle        : "Title"

author: 
  - name          : "First Author"
    affiliation   : "1"
    corresponding : yes    # Define only one corresponding author
    address       : "Postal address"
    email         : "my@email.com"
  - name          : "Ernst-August Doelle"
    affiliation   : "1,2"

affiliation:
  - id            : "1"
    institution   : "Wilhelm-Wundt-University"
  - id            : "2"
    institution   : "Konstanz Business School"

authornote: |
  Add complete departmental affiliations for each author here. Each new line herein must be indented, like this line.

  Enter author note here.

abstract: |
  "测试中文"
  
  <!-- https://tinyurl.com/ybremelq -->
  
keywords          : "测试中文2"
wordcount         : "X"

bibliography      : ["r-references.bib"]

floatsintext      : no
figurelist        : no
tablelist         : no
footnotelist      : no
linenumbers       : yes
mask              : no
draft             : no

documentclass     : "apa6"
classoption       : "man"
output            : 
  papaja::apa6_pdf:
    latex_engine: pdflatex
header-includes:
   - \usepackage{ctex}
---







# Methods
We report how we determined our sample size, all data exclusions (if any), all manipulations, and all measures in the study. <!-- 21-word solution (Simmons, Nelson & Simonsohn, 2012; retrieved from http://ssrn.com/abstract=2160588) -->

## Participants

## Material

## Procedure

## Data analysis
We used R [Version 3.6.1; @R-base] and the R-package *papaja* [Version 0.1.0.9842; @R-papaja] for all our analyses.


# Results

# Discussion


\newpage

# References


\begingroup
\setlength{\parindent}{-0.5in}
\setlength{\leftskip}{0.5in}

<div id = "refs"></div>
\endgroup
