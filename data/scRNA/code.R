suppressPackageStartupMessages({
        library(SummarizedExperiment)
        library(tidyverse)
})

se <- readRDS("rds/se.gene_symbol.rds")

sel_genes <- 1:3

tab1 <-
        t(assay(se[sel_genes])) %>%
        data.frame() %>%
        rownames_to_column("sample") %>%
        as_tibble()

tab2 <-
        colData(se) %>%
        data.frame() %>%
        rownames_to_column("sample")

rnaseq <- full_join(tab1, tab2)
