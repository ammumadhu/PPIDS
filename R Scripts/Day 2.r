setwd("D:\\Datascience")
card
rpivotTable(card[1:15,])
web_page <- readLines("https://stackoverflow.com/questions/28953193/how-to-access-to-https-page-in-r")
web_page
setInternet2(NA)
devtools::install_github('talgalili/installr')
install.packages("rpivotTable", repos=NULL)
devtools::install_github("metacran/cranlogs")
install.packages("dlstats")
library(dlstats)
x <- cran_stats(c("emojifont", "ggimage", "hexSticker", "rvcheck"))
x


