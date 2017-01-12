##################################
## Makefile for RMarkdown sites ##
##################################

.PHONY : all

all: IS4_Site/_site/index.html

IS4_Site/_site/index.html: IS4_Site/_site.yml $(wildcard IS4_Site/*.Rmd) $(wildcard IS4_Site/files/*.pdf)
	Rscript -e "rmarkdown::render_site('IS4_Site')"

## produce pdf, html, docx from .Rmd files
*.pdf: ${@:.pdf=.Rmd}
*.html: ${@:.html=.Rmd}
*.docx: ${@:.docx=.Rmd}

include r-rules.mk