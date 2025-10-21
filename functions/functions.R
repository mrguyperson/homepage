library(tidyverse)


filter_and_pull <- function(data, filt_column, variable, pull_column) {
    data %>%
        filter({{filt_column}} == variable) %>%
        pull({{pull_column}})
}

smart_title <- function(x) {
  # 1) title-case the phrase
  out <- str_to_title(x)
  # 2) restore acronyms by uppercasing the matched text
  out <- str_replace_all(
    out,
    regex("\\b(etl|sql|fair|esg|api|r|qgis|vs|rs)\\b", ignore_case = TRUE),
    ~ toupper(.x)
  )
  out
}