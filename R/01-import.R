
# R/01-import.R — Download earthquake data from USGS

url <- paste0(
  "https://earthquake.usgs.gov/earthquakes/",
  "feed/v1.0/summary/4.5_month.csv"
)

dir.create("data/raw", recursive = TRUE, showWarnings = FALSE)
dir.create("data/clean", recursive = TRUE, showWarnings = FALSE)

download.file(url, "data/raw/earthquakes.csv")

cat("Downloaded data/raw/earthquakes.csv\n")