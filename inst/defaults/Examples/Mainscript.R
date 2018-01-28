#-----------------------------------------
# Title  : Example main script
# Author :
# Date last modified:
#

#-----------------------------------------
# SETUP
#

## Packages
library(daprojects)

## Source functions
fn <- dir("Functions", full.names = TRUE)
if(length(fn)) lapply(fn, source)

#-----------------------------------------
# ANALYSIS
#

