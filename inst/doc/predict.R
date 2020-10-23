## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval=FALSE--------------------------------------------------------------
#  predict_effector(
#    input = "my_fungal_seqs.fa",
#    taxon = "fungi"
#  )

## ----include=FALSE------------------------------------------------------------
# Load libraries
library(dplyr)
library(deepredeff)

## ----echo=FALSE---------------------------------------------------------------
input_fungi_df <- system.file("extdata/example/fungi_sample.fasta", package = "deepredeff") %>%
  deepredeff::fasta_to_df() %>%
  mutate(sequence = stringr::str_replace_all(sequence, "(.{50,}?)", "\\1 "))

knitr::kable(input_fungi_df %>% head(2), "html") %>%
  kableExtra::column_spec(column = 2, width = "50em", monospace = TRUE) %>%
  kableExtra::column_spec(column = 1, monospace = TRUE)

