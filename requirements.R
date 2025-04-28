# requirements.R
# List of required R packages for the Jargon User Analytics website and analysis

required_packages <- c(
  "tidyverse",
  "plotly",
  "DT",
  "syuzhet",
  "htmltools",
  "MASS",
  "broom",
  "topicmodels",
  "tidytext",
  "RColorBrewer",
  "corrplot",
  "kableExtra",
  "tidyr",
  "dplyr",
  "kableExtra",
  "urltools",
  "lubridate",
  "grid",
  "wordcloud2"
)

# Install any missing packages
to_install <- setdiff(required_packages, rownames(installed.packages()))
if (length(to_install) > 0) {
  install.packages(to_install)
}

# Load all required packages
lapply(required_packages, library, character.only = TRUE) 