Dataset from *The effect of upper-respiratory infection on
transcriptomic changes in the CNS* by [Blackmore *et al.*
(2017)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5544260/) used as
data for the intro (data as long-format csv and `SummarizedExperiment`)
and RNA-seq lessons.

## Analysis reports

- **GSE96870-get-data** retrieve the data from GEO and formats them
  as a fully annotated `SummarizedExperiment` object.
- **GSE96870-differential-expression** performs the differential
  analysis.
- **GSE96870-bioc-intro** subsets and prepares the data for the intro
  lesson.

## Data files

- **se2.rds** contains the `SummarizedExperiment` with the selected genes.
- **rnaseq.csv** contains the long table as a csv file.
- **rnaseq.rds** contains the long table as a rds file.
