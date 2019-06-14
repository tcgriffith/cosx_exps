
# 测试报告

环境
```
> sessionInfo()
R version 3.5.1 (2018-07-02)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 18.04.1 LTS

Matrix products: default
BLAS: /usr/lib/x86_64-linux-gnu/openblas/libblas.so.3
LAPACK: /usr/lib/x86_64-linux-gnu/libopenblasp-r0.2.20.so

locale:
 [1] LC_CTYPE=en_US.UTF-8      
 [2] LC_NUMERIC=C              
 [3] LC_TIME=en_US.UTF-8       
 [4] LC_COLLATE=en_US.UTF-8    
 [5] LC_MONETARY=en_US.UTF-8   
 [6] LC_MESSAGES=en_US.UTF-8   
 [7] LC_PAPER=en_US.UTF-8      
 [8] LC_NAME=C                 
 [9] LC_ADDRESS=C              
[10] LC_TELEPHONE=C            
[11] LC_MEASUREMENT=en_US.UTF-8
[12] LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets 
[6] methods   base     

loaded via a namespace (and not attached):
 [1] Rcpp_1.0.0      bookdown_0.8    later_0.7.5    
 [4] digest_0.6.18   R6_2.2.2        magrittr_1.5   
 [7] evaluate_0.12   xaringan_0.8.5  stringi_1.2.4  
[10] promises_1.0.1  rstudioapi_0.8  rmarkdown_1.11 
[13] tools_3.5.1     servr_0.11      stringr_1.3.1  
[16] rsconnect_0.8.8 httpuv_1.4.5    xfun_0.4       
[19] yaml_2.2.0      compiler_3.5.1  htmltools_0.3.6
[22] pagedown_0.0.27 knitr_1.21     
```

- 估计是预览版，没碰到安装没问题
- 6个自带模板，不过paged html documents没有出现在 template的列表里，测试了其他五个

问题

1. 总的问题： 网页里缩放页面之后布局变动很大，输出pdf时按照当前网页的缩放比例，如果像我一样在chrome里预览-print to pdf的话这是一个随机的不可控因素，感觉不大好，特别是海报的话，缩放看整体布局是必要的，具体的话：
    + pagedown::html_letters 在25%时4页变7页
    + pagedown::html_resume 2页变6页
    + pagedown::poster_jacobs 目测没变化
    + pagedown::poster_relaxed authors栏，文字出框了

2. `html_letter`的`self contained` 的问题，
    - `pagedown::html_letter` 默认`self_contained`为false时，knit之后可以在Rstudio里看到，但没有分页，但在chrome里预览失败（，报错信息：
    ```
    paged.js:23887 Fetch API cannot load file:///home/tc/GIT/cosx_exps/test82_files/paged-0.0.27/css/default.css. URL scheme must be "http" or "https" for CORS request.
    add @ paged.js:23887
    paged.js:23887 Fetch API cannot load file:///home/tc/GIT/cosx_exps/test82_files/paged-0.0.27/css/letter.css. URL scheme must be "http" or "https" for CORS request.
    add @ paged.js:23887
    paged.js:23887 Uncaught (in promise) TypeError: Failed to fetch
        at Polisher.add (paged.js:23887)
        at Previewer.preview (paged.js:26907)
        at paged.js:26976
    ```
    但是可以`inf_mr()`来预览，没问题

3. references的问题
    - 示例文档的YAML里见到`references`项，感觉手动编辑reference很麻烦，塞进YAML里也显得臃肿，是不支持.bib吗？在poster_relaxed里还.bib和references都有这就更奇怪了。

4. poster_relaxed的布局问题
    - 各个版块布局的顺序很难控制
    - 看了一下示例文档，加了一个区域或删除一个版块后所有版块的整体布局都乱套了，
    - `poster_relaxed`是漂亮，但摇摇欲坠的感觉，没有`poster_jacobs`稳定

