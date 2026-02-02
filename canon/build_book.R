#!/usr/bin/env Rscript

# Install packages if needed
if (!require('bookdown')) install.packages('bookdown')
if (!require('rmarkdown')) install.packages('rmarkdown')
if (!require('knitr')) install.packages('knitr')

# Render the book
bookdown::render_book('index.Rmd', 'bookdown::pdf_book')

cat('\n✓ PDF book generation completed!\n')
cat('Output file: ./_book/AngraMyNew.pdf\n')
