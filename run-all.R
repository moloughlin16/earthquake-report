# Run the full pipeline

source("R/01-import.R") 
source("R/02-clean.R") 
quarto::quarto_render("report.qmd")
