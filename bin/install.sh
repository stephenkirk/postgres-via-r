#!/bin/sh

set -e

# Make sure r is installed.
command -v r >/dev/null 2>&1 || {
  echo >&2 "r is not installed"
  echo >&2 "please install it prior to running this script"
  exit 78
}

# Make sure that xcode is installed (so we get GCC, required for compiling
# required R scripts)
command -v gcc >/dev/null 2>&1 || {
  xcode-select --install
}

# Install brew (required for postgresql)
command -v brew >/dev/null 2>&1 || {
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

brew bundle --file=- <<EOF
brew "postgresql"
EOF

# Run required r scripts
r -e "install.packages('DBI', repos='http://cran.us.r-project.org')"
r -e "install.packages('devtools', repos='http://cran.us.r-project.org')"
r -e "devtools::install_github('RcppCore/Rcpp')"
r -e "devtools::install_github('rstats-db/RPostgres')"
