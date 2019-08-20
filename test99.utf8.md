---
title: 测试中文
shorttitle: Title
author: First Author\textsuperscript{1}\ \& Ernst-August Doelle\textsuperscript{1,2}
affiliation:
- id: '1'
  institution: Wilhelm-Wundt-University
- id: '2'
  institution: Konstanz Business School
authornote: |
  Add complete departmental affiliations for each author here. Each new line herein must be indented, like this line.

  Enter author note here.
abstract: |-
  "测试中文"

  <!-- https://tinyurl.com/ybremelq -->

  !!!papaja-author-note(Add complete departmental affiliations for each author here. Each new line herein must be indented, like this line.

  Enter author note here.


  Correspondence concerning this article should be addressed to First Author, Postal address. E-mail: my@email.com)papaja-author-note!!!
keywords: 测试中文2
wordcount: X
bibliography: r-references.bib
floatsintext: no
figurelist: no
tablelist: no
footnotelist: no
linenumbers: yes
mask: no
draft: no
documentclass: apa6
classoption: man
output:
  papaja::apa6_pdf:
    latex_engine: pdflatex
header-includes:
- |
  ```{=latex}
  \shorttitle{Title}
  \affiliation{
  \vspace{0.5cm}
  \textsuperscript{1} Wilhelm-Wundt-University\\\textsuperscript{2} Konstanz Business School}
  \keywords{测试中文2\newline\indent Word count: X}
  \usepackage{csquotes}
  \usepackage{upgreek}
  \captionsetup{font=singlespacing,justification=justified}

  \usepackage{longtable}
  \usepackage{lscape}
  \usepackage{multirow}
  \usepackage{tabularx}
  \usepackage[flushleft]{threeparttable}
  \usepackage{threeparttablex}

  \newenvironment{lltable}{\begin{landscape}\begin{center}\begin{ThreePartTable}}{\end{ThreePartTable}\end{center}\end{landscape}}

  \makeatletter
  \newcommand\LastLTentrywidth{1em}
  \newlength\longtablewidth
  \setlength{\longtablewidth}{1in}
  \newcommand{\getlongtablewidth}{\begingroup \ifcsname LT@\roman{LT@tables}\endcsname \global\longtablewidth=0pt \renewcommand{\LT@entry}[2]{\global\advance\longtablewidth by ##2\relax\gdef\LastLTentrywidth{##2}}\@nameuse{LT@\roman{LT@tables}} \fi \endgroup}


  \DeclareDelayedFloatFlavor{ThreePartTable}{table}
  \DeclareDelayedFloatFlavor{lltable}{table}
  \DeclareDelayedFloatFlavor*{longtable}{table}
  \makeatletter
  \renewcommand{\efloat@iwrite}[1]{\immediate\expandafter\protected@write\csname efloat@post#1\endcsname{}}
  \makeatother
  \usepackage{lineno}

  \linenumbers
  ```
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
