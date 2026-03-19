# Earthquake Report

A reproducible, self-updating report on global earthquake activity using live data from the USGS Earthquake Hazards Program. The report is built as a Quarto website and displays the 30-day history of earthquakes magnitude 4.5 and greater worldwide.

## Data Source

Data comes from the [USGS Earthquake Hazards Program](https://earthquake.usgs.gov) live feed:

-   **URL:** `https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_month.csv`
-   **Update frequency:** Every 5 minutes
-   **Coverage:** All earthquakes magnitude 4.5+ in the past 30 days
-   **Format:** CSV with \~500 rows and 22 columns per download

## How to Run

### Required R packages

``` r
install.packages(c("tidyverse", "lubridate", "knitr"))
```

### Run the full pipeline

From the project root, run the following in order:

``` r
source("R/01-import.R")   # Downloads raw data from USGS into data/raw/
source("R/02-clean.R")    # Cleans and saves to data/clean/
quarto::quarto_render()   # Builds the website
```

Or run everything at once with:

``` r
source("run-all.R")
```

## What It Produces

Running the pipeline generates a Quarto website in the `_site/` folder containing:

-   **Home page** — site landing page
-   **Report page** — includes:
    -   Inline summary statistics (total earthquake count, strongest event)
    -   Table of the 10 strongest earthquakes (date, magnitude, location)
    -   Histogram of earthquake magnitude distribution
-   **About page** — project information

Open `_site/index.html` in a browser to preview the site locally.
