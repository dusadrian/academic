+++
title = "Consistency Cubes. A Fast, Efficient Method for exact Boolean Minimization"
date = "2018-02-11"

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Adrian Dușa"]

# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference proceedings
# 2 = Journal
# 3 = Work in progress
# 4 = Technical report
# 5 = Book
# 6 = Book chapter
publication_types = ["2"]

# Publication name and optional abbreviated version.
publication = "In *R Journal*"
publication_short = "In *R Journal*"

# Abstract and optional shortened version.
abstract = "A lot of effort has been spent over the past few decades in the QCA methodology field, to develop efficient Boolean minimization algorithms to derive an exact, and more importantly complete list of minimal prime implicants that explain the initial, observed positive configurations. As the complexity grows exponentially with every new condition, the required computer memory goes past the current computer resources and the polynomial time required to solve this problem quickly grows towards infinity. This paper introduces a new alternative to the existing non-polynomial attempts. It completely solves the memory problem, and preliminary tests show it is exponentially hundreds of time faster than eQMC, the current “best” algorithm for QCA in R, and probes into a territory where it competes and even outperforms engineering algorithms such as Espresso, for exact minimizations. While speed is not much of an issue now (eQMC is fast enough for simple data), it might prove to be essential when further developing towards all possible temporal orders, or searching for configurations in panel data over time, combined with / or automatic detection of difficult counterfactuals etc."
abstract_short = ""

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = true

# Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter the filename (excluding '.md') of your project file in `content/project/`.
# projects = ["deep-learning"]

# Links (optional).
url_pdf = "files/2018-CCubes.pdf"
# url_preprint = ""
# url_code = ""
# url_dataset = ""
# url_project = ""
# url_slides = ""
# url_video = ""
# url_poster = ""
# url_source = ""

# Does the content use math formatting?
# math = true

# Does the content use source code highlighting?
# highlight = true

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
[header]
image = ""
caption = ""
+++

The main idea of this paper is to find prime implicants from bottom-up, instead of top-down as in the classical Quine-McCluskey algorithm.

In order to shorten the execution time, the search space (the implicant matrix) is partitioned in succesive layers of complexity, given the following equality:

$$\prod_{c = 1}^{k} (l_c + 1) = 1 + \sum\_{c = 1}^{k}\binom{k}{c}\prod\_{s = 1}^{c} l_s$$

The left hand side of this equation is the entire implicants chart (including the original, observed truth table configurations) and the right hand side is the same space partitioned in layers of complexity.


