---
title: "Significant speed increase in package QCA"
author: "Adrian Dușa"
date: "2024-10-03"
output: pdf_document
categories: []
tags: []
subtitle: ""
summary: ""
authors: []
lastmod: "2024-10-03"
featured: no
image:
  caption: ""
  focal_point: ""
  preview_only: no
projects: R
slug: "qca-openmp-gurobi"
---

The upcoming release version 3.23 of the package [QCA](https://cran.r-project.org/web/packages/QCA/index.html) will bring a significant speed increase for the minimization process, by a factor of about 10 times on my computer. This achievement has two sources:

- parallelizing the search process to find the prime implicants
- making it possible to use the [Gurobi](https://www.gurobi.com) optimizer for solving the prime implicants chart

The parallelization process is made possible by using the OpenMP API, which is available on most modern systems. Depending on the workstation's architecture, the speed increase is larger and larger the more cores are available. In my case, the parallelization accounts for about 7 times, on a MacBookPro with a M2 Max processor having 12 cores.

Using OpenMP, however, is not automatically enabled by the CRAN servers. It needs to be installed by the user on the local machine, and at least for the MacOS systems CRAN has some [detailed instructions](https://mac.r-project.org/openmp/) on how to do this. I did not find similar instructions for the Windows systems, but I assume that [Rtools](https://cran.r-project.org/bin/windows/Rtools/) should be installed.

These command line tools are necessary to re-build the package QCA from source, to enable the OpenMP API. Installing this local version of the package, assuming that OpenMP is available, will do the trick.

The next speed improvement factor is due to the Gurobi optimizer. By default, the package QCA uses the open source [lpSolve](https://cran.r-project.org/web/packages/lpSolve/index.html) package to solve the prime implicants chart. This is a very good package, but it has its limits, especially for very large and sparce such charts. Gurobi, on the other hand, is a different story. It is the fastest, industrial strength, solver that was recently made available for no cost for academic users. When package QCA detects the Gurobi solver, it will use it instead of lpSolve.

Kudos to the Gurobi team for making this available, this is a massive point of improvement for the Boolean minimization process. Users have to register on the Gurobi website, using their institutional email address, and request an academic license key that can be used to activate the Gurobi package. They also provide [detailed instructions](https://www.gurobi.com/documentation/current/refman/r_ins_the_r_package.html) on how to install and use the R package **gurobi**.

Once these are installed, the package QCA will automatically detect both OpenMP and Gurobi and use them to speed up the minimization process.

<br>
