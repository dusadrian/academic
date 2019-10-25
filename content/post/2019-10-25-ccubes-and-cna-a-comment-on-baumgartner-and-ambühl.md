---
title: 'CCubes and CNA: a comment on Baumgartner and Ambühl'
author: Adrian Dușa
date: '2019-10-25'
slug: ccubes-and-cna
categories: []
tags: []
subtitle: ''
summary: ''
authors: []
lastmod: '2019-10-25T22:19:02+03:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---

I've recently came across a recent manuscript called called "[Optimizing Consistency and Coverage in Configurational Causal Modeling](https://www.researchgate.net/publication/336772752_Implementation_pathways_of_large-scale_urban_development_projects_lsUDPs_in_Western_Europe_a_qualitative_comparative_analysis_QCA/references)", by Michael Baumgartner and Mathias Ambühl.

As usual, Baumgartner proposes an interesting method to find the optimal thresholds for consistency and coverage, to recover the underlying causal structure (the article is jointly authored, but as far as I know Mathias Ambühl does the programming, while the theoretical ideas belong to Baumgartner.)

Without starting another debate around CNA vs. QCA, it remains to be seen (and I will probably test) if their idea to find such optimal thresholds is possible / desirable for QCA truth tables.

The purpose of this post is to offer a bit of explanation, since the authors refered to my  CCubes algorithm.

To start, it is not the first article where Baumgartner refers to my package QCA as having: "... a number of shortcomings, especially when it comes to finding the complete space of viable models."

It is highly ambiguous what these shortcomings really are, since my QCA package can find any solution his package CNA finds, while it can additionally identify intermediate solutions which package CNA is unable to find (of course it was not built for that, but in my opinion that is a real shortcoming.)

Instead, it points to package QCApro as if that package was somehow superior. Baumgartner does not mention that package QCApro is a fork my package QCA, and actually a fork of a very old version that is vastly outperformed by the newer algorithms.

To his credit, Baumgartner does recognize the package QCA is the "only" R package that allows setting consistency and coverage thresholds, thus by logical implication he recognizes that package QCApro has limited functionality.

What Baumgartner refers to as "shortcomings", it is in fact a matter of defaults. A fresh reader of his description might be tempted to believe that package QCA cannot find "the complete space of viable models", which would be a false conclusion. In fact, package QCA *can* find the complete space, by properly setting the argument `"all.sol"` to `TRUE`, in function `minimize()`.

Further into the manuscript, Baumgartner also refers to my CCubes minimization algorithm, and describes it as accepting: 
"... much more fine-grained fit parameters and its bottom-up approach may generate models that differ from standard QCA models. CCubes is not equivalent to standard QCA algorithms; its models often significantly outperform common QCA models in model fit"

But that is not true, of course. CCubes generate exactly the same solutions as the standard QCA. It has been thoroughly tested and validated against Ragin's fs/QCA software, as well as against Tosmana.

Once again, Baumgartner introduces a confusion (or he actually confuses) between what an algoritm is and what it can do. CCubes **can** do everything that CNA does, but that does not mean CCubes is the same thing with CNA. And neither it means that CCubes is something different than standard QCA. Rather, it is a matter of options: with proper (and default!) settings, CCubes matches standard QCA.

One can understand Baumgartner's allegiance to Thiem, as they co-authored a number of papers, but that should not be an excuse for presenting things differently from what they really are.
