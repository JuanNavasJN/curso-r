auto <- read.csv("data/auto-mpg.csv", header = TRUE, sep = ",")
names(auto)

auto_no_header <- read.csv("data/auto-mpg-noheader.csv", header = FALSE, sep = ",")
head(auto_no_header, 4)
