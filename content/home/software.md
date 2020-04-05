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

The most important R package I've created is called [QCA](https://cran.r-project.org/web/packages/QCA/index.html), which does Qualitative Comparative Analysis for all types of input data: binary crisp, multi-value crisp and fuzzy sets. This package is now used in many universities and summer schools all over the world. The official release can be found on CRAN, but the binary packages and the sources for the latest development version can be found here:

- for Windows [QCA_3.7-4.zip](files/QCA_3.7-4.zip)
- for Mac OS [QCA_3.7-4.tgz](files/QCA_3.7-4.tgz)
- Linux sources [QCA_3.7-4.tar.gz](files/QCA_3.7-4.tar.gz)

I am currently working with Ciprian Păduraru on producing a parallel version of the minimization algorithm, which has the potential of increasing the execution speed function of the number of cores from the machine where the package is installed.

Linked to QCA is an independent package called [venn](https://cran.r-project.org/web/packages/venn/index.html), that creates Venn diagrams for up to 7 sets. It is specifically written for graphing entire sets or any other custom intersection, specified as a SOP (sum of products) expression.

Interpreting SOP expressions, as well as a good number of useful miscellanea functions, are tasks perfored by the [admisc](https://cran.r-project.org/web/packages/admisc/index.html) package.

Another incipient package that has a lot of potential is called [DDIwR](https://cran.r-project.org/web/packages/DDIwR/index.html), with a number of useful functions based on the Data Documentation Initiative standard.

Together with Emilian Hossu, I am currently developing an R Graphical User Interface generator, creating custom [dialogs](https://github.com/roda/R-GUI-DialogCreator) that are imported in a [main application](https://github.com/roda/R-GUI-MainApp), employing ElectronJS from the node.js environment. It uses webkit as a standard environment, so the created dialogs look exactly the same on the users' machines. As an added bonus, this is achieved irrespective of their operating systems, because the dialog objects are created from scratch using the magic of Scalable Vector Graphics provided by the RaphaëlJS library.
