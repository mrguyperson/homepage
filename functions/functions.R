filter_and_pull <- function(data, filt_column, variable, pull_column) {
    data %>%
        filter({{filt_column}} == variable) %>%
        pull({{pull_column}})
}
