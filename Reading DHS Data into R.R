# Kristin Bietsch, PhD
# Avenir Health 
# June 29, 2020

# Reading DHS data in R and veiwing labels

library(survey)
library(tibble)
library(dplyr)
library(tidyr)
library(haven)
library(stringr)
library(questionr)
library(labelled)
options(scipen=999)



# Set your working directory to read in file
setwd("C:/Users/KristinBietsch/files/DHSLoop")

#####################################################################
# Read in data
#####################################################################

women <- read_dta("HTIR52FL.DTA")

#####################################################################
# Create Dataframe with Variable Labels
#####################################################################

descriptions <- var_label(women) %>% 
  as_tibble() %>% 
  gather(key = variable, value = description)

#####################################################################
# Labels of Values in Data Frame
#####################################################################

attr(women$v502,"labels")