library(tidyverse)

rsl <- readRDS("rnaseq_long.rds")
rs <- readRDS("rnaseq.rds")


filter(rs, Condition == "Gestation")


## add a new variable that contains NAs



rs %>%
    group_by(Sample) %>%
    summarise(avg_kit = mean(Kit))


rs %>%
    group_by(Sample) %>%
    summarise(avg_kit = mean(Kit),
              avg_pgr = mean(Pgr))

rs %>%
    group_by(Sample, Condition) %>%
    summarise(avg_kit = mean(Kit))


rs %>%
    group_by(Sample, Condition) %>%
    summarise(avg_kit = mean(Kit),
              min_kit = min(Kit),
              max_kit = max(Kit))

rs %>% count(Sample)

rs %>% count(Sample, sort = TRUE)

rs %>% count(Sample, Condition)


rs_long <-
    rs %>%
    pivot_longer(names_to = "gene",
                 values_to = "expression",
                 Kit:Acta2)

rs_long

rs_wide <- rs_long %>%
    pivot_wider(names_from = gene,
                values_from = expression)


identical(rs, rs_wide)


ggplot(rs,
       aes(x = Kit,
           y = Csn2)) +
    geom_point(aes(alpha = 0.2))


## ggplot(rs,
##        aes(x = Kit,
##            y = Csn2)) +
##     geom_hex()



ggplot(rs,
       aes(x = Kit,
           y = Csn2,
           colour = Condition)) +
    geom_point(alpha = 0.2)



ggplot(rs,
       aes(x = Condition,
           y = Kit)) +
    geom_boxplot()


ggplot(rs_long,
       aes(x = gene,
           y = expression)) +
    geom_boxplot() +
    facet_wrap(~ Condition)

ggplot(rs_long,
       aes(x = Condition,
           y = expression)) +
    geom_boxplot() +
    facet_wrap(~ gene)

x <- rs_long %>%
    group_by(gene, Condition) %>%
    summarise(avg = mean(expression))

levels(x$Condition)


ggplot(x,
       aes(x = as.numeric(Condition),
           y = avg,
           colour = gene)) +
    geom_line()


x <- rs_long %>%
    group_by(gene, Sample, Condition) %>%
    summarise(avg = mean(expression)) %>%
    mutate(rep = sub("^.+_", "", Sample))

ggplot(x,
       aes(x = as.numeric(Condition),
           y = avg,
           colour = rep)) +
    geom_line() +
    facet_wrap(~gene)
