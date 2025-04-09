filter_and_pull <- function(data, column, variable) {
    data %>%
        filter(type == variable) %>%
        pull({{column}})
}
