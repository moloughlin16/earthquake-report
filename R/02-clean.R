library(tidyverse)
library(lubridate)

raw <- read_csv("data/raw/earthquakes.csv", show_col_types = FALSE)

clean <- raw |>
  select(time, mag, depth, latitude, longitude, place) |>
  mutate(
    time   = ymd_hms(time),
    date   = as.Date(time),
    region = str_trim(str_extract(place, "[^,]+$"))
  )

write_csv(clean, "data/clean/earthquakes-clean.csv")

cat("Wrote data/clean/earthquakes-clean.csv\n")
