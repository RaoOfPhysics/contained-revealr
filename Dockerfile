# This Dockerfile builds an environment for making your presentations
# using RMarkdown

# The base image comes from the good people at rocker-org
FROM rocker/verse
ADD . /home/rstudio
WORKDIR /home/rstudio
# The next line installs the "revealjs" package for HTML5 presentations
RUN R -e "install.packages(c('revealjs','plotly','bookdown'))"
