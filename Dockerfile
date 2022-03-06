FROM rocker/verse:3.6.3
MAINTAINER Lino Licuanan <linolicuanan@gmail.com>

# Install Packages
RUN install2.r \
	tidyverse

# Copy directory
RUN mkdir -p ~/src
WORKDIR ~/src
COPY run.R run.R

# Command
CMD ["Rscript", "run.R"] 