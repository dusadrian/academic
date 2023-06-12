+++
# Custom widget.
# An example of using the custom widget to create your own homepage section.
# To create more sections, duplicate this file and edit the values below as desired.
widget = "custom"
active = true
date = "2020-04-05"

# Note: a full width section format can be enabled by commenting out the `title` and `subtitle` with a `#`.
title = "Software"
subtitle = ""

# Order that this section will appear in.
weight = 30

+++

My programming environment of choice is [R](https://www.r-project.org), because it is a high level software and it automatically does memory management when creating objects. It is the sort of language where users can focus on substantive issues, rather than pure programming.

The most important R package I've created is called [QCA](https://cran.r-project.org/web/packages/QCA/index.html), which does Qualitative Comparative Analysis for all types of input data: binary crisp, multi-value crisp and fuzzy sets. This package is now used in many universities and summer schools all over the world. The official release can be found on CRAN, but the binary packages for the latest development version can be downloaded from here:

- for Windows [QCA_3.19.1.zip](files/QCA_3.19.1.zip)
- source file [QCA_3.19.1.tar.gz](files/QCA_3.19.1.tar.gz)

I am currently working on a parallel version of the minimization algorithm, having a lot pf potential to increase the execution speed, function of the number of cores from the machine where the package is installed.

Linked to QCA is an independent package called [venn](https://cran.r-project.org/web/packages/venn/index.html), that creates Venn diagrams for up to 7 sets. It is specifically written for graphing entire sets or any other custom intersection, specified as a SOP (sum of products) expression.

Interpreting SOP expressions, as well as a good number of useful miscellanea functions, are tasks perfored by the [admisc](https://cran.r-project.org/web/packages/admisc/index.html) package.

Another package with a lot of potential is called [DDIwR](https://cran.r-project.org/web/packages/DDIwR/index.html), having a number of useful functions based on the Data Documentation Initiative standard. It can also convert to and from various statistical formats, and it recently gained a graphical user interface, packed into a software called [StatConverter](https://roda.github.io/StatConverter/).

Together with Emilian Hossu, I currently develop a new type of GUI generator for R, creating [custom dialogs](https://github.com/roda/R-GUI-DialogCreator) that are imported in a [main application](https://github.com/roda/R-GUI-MainApp), employing ElectronJS from the Node.js environment. It uses webkit as a standard environment, so the created dialogs look exactly the same on the users' machines.

One of the most promising recent R packages is called [declared](https://cran.r-project.org/web/packages/declared/index.html), which (finally) enables R users to declare multiple missing values. Since it is a new addition in the R ecosystem, this special type of object has an entire suite of associated functions, for instance to calculate weighted summaries even for the missing values.

All my R packages are listed in the [R Universe](https://dusadrian.r-universe.dev/ui#packages).
