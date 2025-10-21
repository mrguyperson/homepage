options(
  repos = c(RSPM = "https://packagemanager.posit.co/cran/2025-04-22"),
  renv.config.cache.enabled = TRUE,
  renv.config.cache.symlink = TRUE,
  renv.config.pak.enabled = FALSE  # Set to TRUE if you later want to use pak
)

pkgs <- c(
    "here",
    "httpgd",
    "tidyverse",
    "readxl",
    "quarto",
    "shiny"
  )


renv::init()
renv::install(pkgs, ask = FALSE)
renv::snapshot(prompt = FALSE)