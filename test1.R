options(encoding = "utf-8")
mytext <- '我是一头猪'
write.table(mytext, 'test.txt', row.names = FALSE, col.names = FALSE, quote = FALSE)
