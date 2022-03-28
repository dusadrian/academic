---
title: 'Renaming ESS variables'
author: Adrian Dușa
date: '2022-03-28'
slug: rename-ess-variables
categories: []
tags: []
subtitle: ''
summary: ''
authors: []
lastmod: '2022-03-28T13:29:02+03:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---

The European Social Survey is the most advanced academic survey in Europe, with over 20 years of collecting data every two years.

It is organised on rounds, with core and rotating modules which means questions names (or numbers) are not fixed from one round to another. To integrate the datasets from multiple countries and multiple rounds, ESS is using a so-called mnemonic system, for instance PPLTRST to refer to the question if most people can be trusted. This question was named A4 in round 8 and it can have different other names in other rounds.

While using a mnemonic system is the only solution with integrated data files, it makes the life of regular users somewhat difficult if searching for a particular variable in a particular round. The connection with the questionnaire gets lost, as the A4 from the questionnaire is nowhere found in the dataset for round 8.

This in fact is a [Frequently Asked Question](https://www.europeansocialsurvey.org/about/faq.html), found in the Data section at question: "How do I use question numbers as variable names?". The solution from ESS is to use software specific script files, to rename variables from the mnemonic system to the actual question names from the ESS questionnaire.

The current scripts cover the needs of most ESS users, with scripts written for SAS, SPSS and Stata. However (and this is a general problem which will soon be addressed by ESS) there is no such script for the R programming environment which is also a highly used statistical software.

Until there will be an R version of the ESS datasets, one possible solution is to download any of the currently provided versions (for instance SPSS) and convert it into an R data frame using the R package [DDIwR](https://cran.r-project.org/web/packages/DDIwR/index.html). The big advantage of this package, besides converting to and from various statistical software, is to create a special type of R object where each variable is an object of class "declared", created by a recent package called [declared](https://cran.r-project.org/web/packages/DDIwR/index.html) which allows R users to define specific missing values in a similar fashion as most users do in SPSS, Stata or SAS.

This was not directly possible until now, given that base R has one and only one type of missing value, the NA.

An actual example of how to convert, also containing he renaming of the variables, are found in [this R script](files/ESS8rename.R).
