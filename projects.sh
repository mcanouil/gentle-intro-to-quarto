#!/usr/bin/env bash

rm -rf demo
mkdir -p demo
cd demo
quarto create project default --no-open --no-prompt Default
quarto create project website --no-open --no-prompt Website
quarto create project blog --no-open --no-prompt Blog
quarto create project book --no-open --no-prompt Book
quarto create project manuscript --no-open --no-prompt Manuscript

quarto create project default --no-open --no-prompt webr
echo '---
title: webR in Quarto HTML Documents
format: html
engine: knitr
filters:
  - webr
---

This is a webr-enabled code cell in a Quarto HTML document.

```{webr-r}
fit = lm(mpg ~ am, data = mtcars)
summary(fit)
```
' > webr/Webr.qmd
