# Working notes for the bioc-intro lesson

See Google doc for details.


## Defining Target Audience


Minimal questions for bioc-intro course:

### Laurent

- Who are they? Bachelor student (year 2 or 3) in biomedical
  sciences. No experience in programming or data analysis as part of
  their curriculum. Some students also struggle with Excel and/or
  concepts such as file/directory, relative/absolute path. Some
  haven’t much experience using Excel either.
- What is the problem they face? At a later stage during their
  curriculum, they will have to analyse all sorts of data but will
  never have been taught how to do it or what tools to use.
- How will your lesson help them address that problem? The bioc-intro
  lesson should provide them with enough R knowledge to perform simple
  data manipulation and visualisation to be able to analyse data in a
  tabular format. In addition, they should also be introduced to the
  fact that some data won’t fit in a single tabular data, and that
  omics data typically doesn’t, and that the Bioconductor project
  offers dedicated tools for such data, as get introduced to
  basic/important Bioc objects (needed for next courses). They should
  also be familiar with the concept of package and their installation.

### Nitesh

- who are they? - Students from different backgrounds, Bachelors,
  Masters, MD, PhD but are looking to gain experience in high
  throughput genomics analysis with Bioconductor. They are looking to
  do the analysis themselves and need a place to start. They have
  domain knowledge in genomics.
- what is the problem they face? - Data is complex and they have no
  structured way of analyzing their data. They don’t know what
  technology or how to use i.e Galaxy, R/Bioconductor, something
  else….or don’t know what is available.
- how will your lesson help them address that problem? - Help teach
  them basics, importing data, analyzing data using Bioconductor
  packages and data structures, writing results in a coherent reusable
  manner. (Maybe even “tidy”)

### Robert

- who are they? Researchers generating molecular data without prior
  computational experience.
- what is the problem they face? How to read molecular data into R,
  how to explore that data.
- how will your lesson help them address that problem? They'll be able
  to import their molecular data into R, store it into the appropriate
  Bioconductor data container and explore it with the methods
  associated with that data container.

### Charlotte

- who are they? PhD student in biology, who has generated some omics
  data, but never done any analysis on their own. Gets processed data
  back from the facility.
- what is the problem they face? They can't explore the results on
  their own, and are 'stuck' with what is provided.
- how will your lesson help them address that problem? Get over the
  initial hurdle of importing and exploring data in R (specifically
  data stored in 'omics-specific' containers), understanding how to
  write simple scripts for exploration and plotting of specific
  aspects of their data.

### Jenny

- who are they? Users of the U of I biotechnology facility (mostly
  graduate students and post-docs, but a few undergrads and faculty
  members) who have generated -omics data. They come from a wide range
  of departments (e.g., Biology, Chemistry, Engineering, Statistics,
  Computer Science, Agriculture, etc.) so background knowledge varies
  a lot and they work on a wide range of organisms, often non-model.
- what is the problem they face? They need to learn how to handle,
  process and analyze their -omics data.
- how will your lesson help them address that problem? Show them how
  to install R and packages, introduce basic R syntax and data
  structures, teach them how to read and modify code so they can
  follow and adapt package vignettes.

### Summary

Whether undergraduate, graduate or post-docs, the audience isn't
expected to have any skills in R. Learners should however be familiar
the domain (high-through put biology) in general, and with the
measurement of gene expression (without any reference to any
technology) in particular.


## Objectives and reverse design


### Nitesh

- Objective: Load data from a CSV (excel) file and manipulate it using
  tidyverse vocabulary in R so that it arranged in a genes as rows and
  columns as values.

- Skill: tidyR, dplyr, dyplr verbs, basic R

```
dat <- read_csv(“mydata.csv”)
dat_1 <- dat %>% select(Gene, Val, metadata) %>% arrange(desc(Val)) %>% pivot_long(...)
```

### Charlotte

- Objective: Load an expression matrix and sample metadata, select a
  gene and plot the expression level in different groups.

- Skills: Read csv file, understand tabular data structure (matrix,
  data.frame), subset tabular data, merge data from different tables
  (to combine expression data with sample metadata), ggplot syntax

### Laurent

- Objective: Visualis the expression of a set of genes in different
  sample (or group of sample).

```
expression_table %>%
rowname_to_column(gene) %>%
pivot_longer(names_to = “sample”, values_to = “expression”, starts_with(“sample”)) %>%
ggplot(aes(x = sample, y = expression)) +
geom_point() +
facet_wrap(~ gene)
```

- Skills needed: get data into R as a data.frame/tibble, understand
  concept of wide/long tidy data, including familiarity with dplyr,
  and knowledge of ggplot2 syntax.


### Robert

```
## Import molecular and phenotype data into a Bioconductor data container
library(SummarizedExperiment)
row_data <- read.csv(“expression_data.csv”)
col_data <- read.csv(“phenotype_data.csv”)
se <- SummarizedExperiment(assay=row_data, colData=col_data)
seqdepth <- barplot(colSums(assays(se)$counts))
```

### Jenny

- Objective: Read in a .gtf or .gff file and assess what feature type
  and attribute name they should use for alignment and counting.

- Skills needed: knowledge of the structure of a gff file, how to read
  one in using rtracklayer, understanding of the structure and
  accessors of an S4 GRanges object, basic R skills like subsetting
  via brackets and $, table() and names()

```
library(rtracklayer)
gff0 <- import("GCF_000146045.2_R64_genomic.gff.gz")
methods(class=GRanges)
table(gff0$type)
gff_exon <- gff0[gff0$type == "exon"]
mcols(gff.exon)
names(mcols(gff.exon))
```

### Summary

The goal of this course is to bring newcomers, with no prior
experience of R, to be able to perform standard data science tasks and
visualisation using the `tidyverse` and familiarise themselves with
other concepts so that they now feel confident to start learning
Bioconductor with the next courses.
