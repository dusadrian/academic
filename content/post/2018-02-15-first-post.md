+++
title = "Creating this personal website using R"

date = 2018-02-12
lastmod = 2018-01-14
draft = false

tags = [""]
summary = "For the interested ones."

[header]
image = ""
caption = ""

+++

Creating a personal webpage was a long overdue item on my to do list. Some years ago I tried a [Google hosted site](https://www.sites.google.com/site/dusadrian/) which was enough at the time, but never got to update it since it was just too tedious to works with the low level HTML code all the time. In addition, it missed all the beautiful features of the modern web: having a responsive page to render on desktops, tablets  and mobile phones, sharing a post, commenting on it, etc.

I have been looking for various alternatives ever since, but not completely convinced by any one. Until a few months ago, when Yihui Xie announced the creation of the [**blogdown**](https://cran.r-project.org/web/packages/blogdown/index.html) package in R, designed specifically to create a website (or a blog) in a matter of minutes.

Fantastic, I thought. And the result is truly spectacular, thanks to the close interlink between this R package (I use it with RStudio), and some other frameworks like [Hugo](https://gohugo.io/) (the workhorse behind the automatic creation of the website itself), [Markdown](https://en.wikipedia.org/wiki/Markdown) (a lightweight but powerful markup language that complements $\rm \LaTeX$, for those who know what this is) and a Hugo theme called [Academic](https://themes.gohugo.io/academic/).

All of those are pretty automatic and do not require a highly sophisticated level of computer literacy. There are numerous step by step tutorials, starting with a [complete book](https://bookdown.org/yihui/blogdown/) about the blogdown package (the book itself being written with another amazing R package by Yihui Xie called [**bookdown**](https://cran.r-project.org/web/packages/bookdown/index.html)), and Googling around I found Alison Hill's [how to](https://alison.rbind.io/post/up-and-running-with-blogdown/) with blogdown that further points to three other tutorials, and this [very useful documentation](https://sourcethemes.com/academic/docs/writing-markdown-latex/) on how to use Markdown and $\rm \LaTeX$ together.

This post is not not about duplicating the information from those tutorials (you are welcome to read those links to get you going), I just wanted to spread the word.

When creating a webpage of any kind, a first question is where to host it. Thankfully, from all those tutorials I found [Netlify](https://www.netlify.com/), an amazing free webhosting platform with tons of automatic features that makes my life a whole lot easier. For those who have only the very basic computer knowledge about HTML and what a webpage is, having a website hosted by Netlify is as easy as creating one (their menus are extremely intuitive), then simply dragging the public directory (created for instance with the **blogdown** package in RStudio) of the website, on the dedicated area.

But Netlify can be of a much more help. Instead of building the website locally, it is a whole lot easier to host the Markdown files that generate it on a [GitHub repository](https://github.com/dusadrian/academic/) such as mine in the link.

Alright, something like GitHub required a little bit more about computers and programming, but there are tons of tutorials out there as well. It also involves a versioning system like [git](https://git-scm.com/) (if I am not mistaken, it was created by none other than Linus Torvalds, the creator of Linux).

Combining git (natively supported by RStudio) and GitHub can be life saving. I found myself hopelessly looking at the Markdown files, not knowing what I did wrong, to find grace in reverting to a previously working version. And Netlify is very happy to work with a GitHub repository and re-deploys the website with any change in the GitHub repo. It is now as simple as creating a Markdown text file (there are templates for publications, posts, projects, talks etc.), commit and push to GitHub... and enjoy the benefits of the automatic deployment on Netlify. Easy life.

Some more fine tuning was needed to add comments to posts. Hugo is happy to work with [Disqus](https://disqus.com/), another highly intuitive framework that I like, and readers are welcomed to authenticate themselves with a multitude of choices (Gmail, Facebook etc.) in order to post comments.

And the icing on the cake, for those aware it is also possible to allocate a Google Analytics ID to track how many hits the website attracted, how many reads and so on. All of those, in a matter of about two days of effort, but it is well worth it.


