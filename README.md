# Contained revealR

Self-contained repo for interactive stats-driven presentations

[![language: R](https://img.shields.io/badge/language-R-blue.svg)](https://www.r-project.org/)
[![presented at: CERN IT Lightning Talks #13](https://img.shields.io/badge/presented%20at-CERN%20IT%20Lightning%20Talks%20%2313-blue.svg)](https://indico.cern.ch/event/630931/)
[![uses: RStudio](https://img.shields.io/badge/uses-RStudio-blue.svg)](https://www.rstudio.com/)
[![uses: Docker](https://img.shields.io/badge/uses-Docker-blue.svg)](https://www.docker.com/)

---

Let's make some interactive presentations!

You can view the presentation here: [https://raoofphysics.github.io/contained-revealr/](https://raoofphysics.github.io/contained-revealr/)

The slides should also be available on a mobile browser, although Firefox on Android isn't loading the interactive plots for some reason. Against my better judgement, I recommend you use Chrome on Android to view the content.

If you use hypothes.is, please annotate the presentation! I will be grateful for any notes you leave.

To use this workflow, grab the [`Dockerfile`](Dockerfile) and [`docker-compose.yml`](docker-compose.yml) files from this repo, fire up [Docker](https://www.docker.com/), and get [RStudio](https://www.rstudio.com/) running in your browser.
The Docker image in question (`rocker/verse`, brought to you by the wonderful people behind [`rocker-org`](https://github.com/rocker-org)) should contain all the main dependencies needed to make your presentation, and any additional packages needed will be installed automatically by instructions in the Dockerfile.

## Requirements

- Access to a \*NIX system (GNU/Linux or macOS) or knowledge of how to use CLI tools on Windows
- git
- Docker (and [Docker Compose](https://docs.docker.com/compose/))
- Some basic knowledge of RStudio

## Build information

This presentation is put together using:

- [R](https://www.r-project.org/) and [RMarkdown](http://rmarkdown.rstudio.com/), using [RStudio](https://www.rstudio.com/)
- [ggplot2](http://ggplot2.org/) for the plots + [plotly](https://plot.ly/) for the interactivity
- [knitr](https://cran.r-project.org/web/packages/knitr/index.html) (available within RStudio) + [reveal.js](http://lab.hakim.se/reveal-js/) for the presentation itself
- [hypothes.is](https://hypothes.is/), which provides the annotation layer on top of the presentation

knitr takes the `.Rmd` (R Markdown) file and through some wizardry produces a standalone `.html` file that serves as the presentation.

## Workflow

Fire up a terminal, navigate to a directory where you would like to download this repository, and follow these instructions:

```bash
$ git clone https://github.com/RaoOfPhysics/contained-revealr.git # Clone this git repo to your machine
$ cd contained-revealr # Enter the git repository
$ docker-compose up -d # Launch the Docker container named amr_research
```

You then need to navigate you `localhost:8787` or `0.0.0.0:8787` in your browser, to see RStudio along with all the files from the repository.
To log in, use "`rstudio`" as both the username and password.

When you're done playing around with the RStudio, close your browser window, and run:

```bash
$ docker-compose down # Will stop and delete the container
# Optional! If you want to delete the Docker image just created,
# run the following command as well:
$ docker image rm raoofphysics/contained-revealr
```

## Contributing

Feel free to submit a pull request with your proposed changes or create an issue on GitHub.

## Licence

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/InteractiveResource" property="dct:title" rel="dct:type">Contained revealR</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/RaoOfPhysics/contained-revealr" property="cc:attributionName" rel="cc:attributionURL">Achintya Rao</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
