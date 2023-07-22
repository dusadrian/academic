---
title: Multiple missing values in R? Solved.
author: Adrian Dușa
date: '2023-07-16'
slug: multiple-missing-values-in-R
categories: []
tags: []
subtitle: ''
summary: ''
authors: []
lastmod: '2023-07-16'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: [R]
---

As a former SPSS trained user, ever since I started using R there was always a rather annoying background question: why is there a single missing value in base R, and why doesn't it offer the possibility to use multiple missing values?

As far as I understand, the main reason might have something to do with the scientific domain of the original R creators, who were definitely not from the social sciences. A single missing value is more than enough for any other science, and R simply went on the original design, ignoring the definite need of multiple missing values that are universally offered by all other major statistical software like SAS, SPSS and Stata.

More recently, some good initiatives led to the packages `haven` and `labelled`, who are almost but not perfect. In this post, I am going to write about my own solution to this problem, published on CRAN in the package [declared](https://cran.r-project.org/web/packages/declared/index.html).

This package offers a custom type of vector, that is not different from regular R vectors in the sense that it contains exactly the same missing values, so that normal functionality is maintained for any statistical operation. What it additionally does, is to keep a record of the position of each and every missing value, and assign meaning to those positions. This way, it manages to achieve the best of both worlds: declare and use multiple missing values, while still being compatible with base R.

The following is an illustrative example, for a hypothetical variable for the number of children in a household:

```r
library(declared)
children <- declared(
  c(2, -91, 0, 3, -92, 4, 2, 1, 0, 3, -91, 0, 1, 2, 1, 0, -91, 2, 5, 2, 1, 3),
  label = "Number of children in the household",
  labels = c("Prefer not to say" = -91, "Not applicable" = -92),
  na_values = c(-91, -92)
)
#> <declared<integer>[23]> Number of children in the household
#>  [1]       0       2 NA(-91)       0       3 NA(-92)       4       2       1
#> [10]       0       3 NA(-91)       0       1       2       1       0 NA(-91)
#> [19]       2       5       2       1       3
#> Missing values: -91, -92

#> Labels:
#>  value             label
#>    -91 Prefer not to say
#>    -92    Not applicable
```

The values `-91` and `-92` are properly declared and recognised as missing, as it can be seen in the print method which prepends the `NA` in front of the value.

Let's see how this vector looks in base R:

```r
baseRchildren <- drop(children)
#> [1]  2 NA  0  3 NA  4  2  1  0  3 NA  0  1  2  1  0 NA  2  5  2  1  3
```

Any statistical operation, even basic descriptives, on such vectors would result into an `NA`:

```r
mean(baseRchildren)
#> [1] NA
```

In R, the value `NA` is equivalent to an empty cell (with no information about why it is missing) and this is a potential problem. Obtaining the expected result involves the argument `na.rm` (remove missing values before calculating the mean), deactivated by default to alert users about data problems. 

```r
mean(baseRchildren, na.rm = TRUE)
#> [1] 1.777778
```

However, in this particular example the values are not "empty". There are particular and known reasons for each value where the number of children is not provided, hence these values should not be problematic. Package `declared` solves this by default:

```r
mean(children)
#> [1] 1.777778
```

In this example, the argument `na.rm` is not necessary because the (declared) `NA` values are not empty cells, despite being stored as regular `NA` values. For this reason, a dedicated function is provided to differentiate between pure `NA` and the four declared missing values:

```r
sum(is.na(children))
#> [1] 4

sum(is.empty(children))
#> [1] 0

sum(is.empty(c(children, NA))) # adding one pure empty value
#> [1] 1
```

Declared vectors are useful for both numeric and categorical variables. In fact, missing values can be recorded no matter what kind of variable there is in a dataset. In addition to declaring such values, it is in fact possible to also declare value labels for the response categories, and create a special kind of object that is in between numerical vectors and R factors.

```r
orientation <- declared(
  c(1:3, -91),
  labels = c("Left" = 1, "Middle" = 2, "Right" = 3, "Don't know" = -91),
  na_value = -91,
  label = "Respondent's political orientation"
)
#> <declared<integer>[4]> Respondent's political orientation
#> [1]       1       2       3 NA(-91)
#> Missing values: -91

#> Labels:
#>  value     label
#>     1       Left
#>     2     Middle
#>     3      Right
#>   -91 Don't know
```
This is a typical example of a categorical variable, with all values corresponding to certain ordered categories. The only possible way to emulate something like this in base R is to use a factor:

```r
factor(
  c("Left", "Middle", "Right", "Don't know"),
  levels = c("Left", "Middle", "Right", "Don't know"),
  ordered = TRUE
)
#> [1] Left       Middle     Right      Don't know
#> Levels: Left < Middle < Right < Don't know
```

In R factors, it is impossible to differentiate between valid categories and those which should be treated as missing, and the order of the categories needs to be specified separately using the argument `levels`. In addition, the original (questionnaire) values are lost, for instance the value `-91` can not be preserved.

Unlike R factors, in the declared counterpart the values are still there, and labels are assigned for each category. To meet the expectations of various statistical procedures that allow for categorical variables, the function `as.factor()` coerces the vector:

```r
> as.factor(x)
#> [1] Left   Middle Right  <NA>  
#> Levels: Left Middle Right
```

This is the expected behavior, since the value `-91` corresponding to the category "Don't know" is to be treated as missing, anyways. The declared missing values are correctly coerced to base R `NA` values.

There are many other utility functions in this package, probably too many to describe in a single post. Interested readers are invited to read the Vignettes from the package's CRAN page:<br>
[https://cran.r-project.org/web/packages/declared/index.html](https://cran.r-project.org/web/packages/declared/index.html)

<br>
