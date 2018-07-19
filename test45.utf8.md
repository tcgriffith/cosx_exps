---
output: html_document
---

## htmlTables



```r
library(data.table)
library(htmlTable)
library(ggplot2)
a <- data.table(matrix(seq(1, 100, 5), ncol = 2))
htmlTable(a)
```

<table class='gmisc_table' style='border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;' >
<thead>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey;'> </th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>V1</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>V2</th>
</tr>
</thead>
<tbody>
<tr>
<td style='text-align: left;'>1</td>
<td style='text-align: center;'>1</td>
<td style='text-align: center;'>51</td>
</tr>
<tr>
<td style='text-align: left;'>2</td>
<td style='text-align: center;'>6</td>
<td style='text-align: center;'>56</td>
</tr>
<tr>
<td style='text-align: left;'>3</td>
<td style='text-align: center;'>11</td>
<td style='text-align: center;'>61</td>
</tr>
<tr>
<td style='text-align: left;'>4</td>
<td style='text-align: center;'>16</td>
<td style='text-align: center;'>66</td>
</tr>
<tr>
<td style='text-align: left;'>5</td>
<td style='text-align: center;'>21</td>
<td style='text-align: center;'>71</td>
</tr>
<tr>
<td style='text-align: left;'>6</td>
<td style='text-align: center;'>26</td>
<td style='text-align: center;'>76</td>
</tr>
<tr>
<td style='text-align: left;'>7</td>
<td style='text-align: center;'>31</td>
<td style='text-align: center;'>81</td>
</tr>
<tr>
<td style='text-align: left;'>8</td>
<td style='text-align: center;'>36</td>
<td style='text-align: center;'>86</td>
</tr>
<tr>
<td style='text-align: left;'>9</td>
<td style='text-align: center;'>41</td>
<td style='text-align: center;'>91</td>
</tr>
<tr>
<td style='border-bottom: 2px solid grey; text-align: left;'>10</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>46</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>96</td>
</tr>
</tbody>
</table>

```r
for (i in 10:11) {
    cat( paste('## title no.', i, '\n' ) ) 
    print(ggplot(a*i, aes(x = V1, y = V2)) + geom_point())
    writeLines(htmlTable(a*i))
    cat('\n')
}
```

## title no. 10 
<img src="test45_files/figure-html/unnamed-chunk-1-1.png" width="672" /><table class='gmisc_table' style='border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;' >
<thead>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey;'> </th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>V1</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>V2</th>
</tr>
</thead>
<tbody>
<tr>
<td style='text-align: left;'>1</td>
<td style='text-align: center;'>10</td>
<td style='text-align: center;'>510</td>
</tr>
<tr>
<td style='text-align: left;'>2</td>
<td style='text-align: center;'>60</td>
<td style='text-align: center;'>560</td>
</tr>
<tr>
<td style='text-align: left;'>3</td>
<td style='text-align: center;'>110</td>
<td style='text-align: center;'>610</td>
</tr>
<tr>
<td style='text-align: left;'>4</td>
<td style='text-align: center;'>160</td>
<td style='text-align: center;'>660</td>
</tr>
<tr>
<td style='text-align: left;'>5</td>
<td style='text-align: center;'>210</td>
<td style='text-align: center;'>710</td>
</tr>
<tr>
<td style='text-align: left;'>6</td>
<td style='text-align: center;'>260</td>
<td style='text-align: center;'>760</td>
</tr>
<tr>
<td style='text-align: left;'>7</td>
<td style='text-align: center;'>310</td>
<td style='text-align: center;'>810</td>
</tr>
<tr>
<td style='text-align: left;'>8</td>
<td style='text-align: center;'>360</td>
<td style='text-align: center;'>860</td>
</tr>
<tr>
<td style='text-align: left;'>9</td>
<td style='text-align: center;'>410</td>
<td style='text-align: center;'>910</td>
</tr>
<tr>
<td style='border-bottom: 2px solid grey; text-align: left;'>10</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>460</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>960</td>
</tr>
</tbody>
</table>

## title no. 11 
<img src="test45_files/figure-html/unnamed-chunk-1-2.png" width="672" /><table class='gmisc_table' style='border-collapse: collapse; margin-top: 1em; margin-bottom: 1em;' >
<thead>
<tr>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey;'> </th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>V1</th>
<th style='border-bottom: 1px solid grey; border-top: 2px solid grey; text-align: center;'>V2</th>
</tr>
</thead>
<tbody>
<tr>
<td style='text-align: left;'>1</td>
<td style='text-align: center;'>11</td>
<td style='text-align: center;'>561</td>
</tr>
<tr>
<td style='text-align: left;'>2</td>
<td style='text-align: center;'>66</td>
<td style='text-align: center;'>616</td>
</tr>
<tr>
<td style='text-align: left;'>3</td>
<td style='text-align: center;'>121</td>
<td style='text-align: center;'>671</td>
</tr>
<tr>
<td style='text-align: left;'>4</td>
<td style='text-align: center;'>176</td>
<td style='text-align: center;'>726</td>
</tr>
<tr>
<td style='text-align: left;'>5</td>
<td style='text-align: center;'>231</td>
<td style='text-align: center;'>781</td>
</tr>
<tr>
<td style='text-align: left;'>6</td>
<td style='text-align: center;'>286</td>
<td style='text-align: center;'>836</td>
</tr>
<tr>
<td style='text-align: left;'>7</td>
<td style='text-align: center;'>341</td>
<td style='text-align: center;'>891</td>
</tr>
<tr>
<td style='text-align: left;'>8</td>
<td style='text-align: center;'>396</td>
<td style='text-align: center;'>946</td>
</tr>
<tr>
<td style='text-align: left;'>9</td>
<td style='text-align: center;'>451</td>
<td style='text-align: center;'>1001</td>
</tr>
<tr>
<td style='border-bottom: 2px solid grey; text-align: left;'>10</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>506</td>
<td style='border-bottom: 2px solid grey; text-align: center;'>1056</td>
</tr>
</tbody>
</table>
