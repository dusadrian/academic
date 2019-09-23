---
featured: true

authors: ["Adrian Dușa"]

title: "Consistency Cubes. A Fast, Efficient Method for exact Boolean Minimization"

date: "2018-02-01"
publishDate: "2018-02-01"

# 0 = Uncategorized, 1 = Conference proceedings, 2 = Journal, 3 = Work in progress, 4 = Technical report, 5 = Book, 6 = Book chapter
publication_types:
- "2"

publication: '*R Journal*'

publication_short: ""

abstract: "A lot of effort has been spent over the past few decades in the QCA methodology field, to develop efficient Boolean minimization algorithms to derive an exact, and more importantly complete list of minimal prime implicants that explain the initial, observed positive configurations. As the complexity grows exponentially with every new condition, the required computer memory goes past the current computer resources and the polynomial time required to solve this problem quickly grows towards infinity. This paper introduces a new alternative to the existing non-polynomial attempts. It completely solves the memory problem, and preliminary tests show it is exponentially hundreds of times faster than eQMC, the current 'best' algorithm for QCA in R, and probes into a territory where it competes and even outperforms engineering algorithms such as Espresso, for exact minimizations. While speed is not much of an issue now (eQMC is fast enough for simple data), it might prove to be essential when further developing towards all possible temporal orders, or searching for configurations in panel data over time, combined with / or automation detection of difficult counterfactuals etc."

doi: "10.32614/RJ-2018-080"

projects: []

summary: "The most recent, cutting edge Boolean minimization algorithm."

math: true

tags: ["R", "QCA"]

# url_code: ""
# url_dataset: ""
url_pdf: "https://journal.r-project.org/archive/2018/RJ-2018-062/RJ-2018-062.pdf"
# url_poster: ""
# url_project: ""
# url_slides: ""
# url_source: ""
# url_video: ""

image:
  caption: ""
  focal_point: ""
  preview_only: false
---

The main idea of this paper is to find prime implicants from bottom-up, instead of top-down as in the classical Quine-McCluskey algorithm.

In order to shorten the execution time, the search space (the implicant matrix) is partitioned in succesive layers of complexity, given the following equality:

$$\prod_{c = 1}^{k} (l_c + 1) = 1 + \sum\_{c = 1}^{k}\binom{k}{c}\prod\_{s = 1}^{c} l_s$$

The left hand side of this equation represents the entire implicant matrix (including the original, observed truth table configurations) and the right hand side is the same space partitioned in layers of complexity.
