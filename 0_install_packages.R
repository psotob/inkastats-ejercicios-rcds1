rm(list = ls(all = TRUE))
gc()

# Installing and loading packages
if (!require("pacman")) {
  install.packages("pacman")
}

if (!require("gradethis")) {
  remotes::install_github("rstudio/gradethis")
}


pacman::p_unload("all") # Unloading all package except base

pacman::p_load(
  shiny, 
  tidyverse, 
  learnr, 
  gapminder,
  dslabs) # Loading packages

data(gapminder, package = "dslabs")

#opciones
knitr::opts_chunk$set(echo = FALSE)

tutorial_options(exercise.checker = gradethis::grade_learnr)