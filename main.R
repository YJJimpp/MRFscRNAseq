
## Source Functions
source("./MRF_scRNA_functions.R")

## Load Packages
library(locfdr)
library(Matrix)

## Simple Data Illustration
load("zz.Robj")
load("g_g.Robj")
load("c_c.Robj")
n_gene = dim(zz)[1]
n_cell = dim(zz)[2]

## Get Results
results = getMRFDE_t_stats(zz, n_cell, n_gene, c_c, g_g,
                           nulltype = 1, df = 15, iterEM = 200, iterGibbsPost = 20000, brPost = 10000)
saveRDS(results, file = "./results.rds")


