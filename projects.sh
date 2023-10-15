#!/usr/bin/env bash

rm -rf demo
mkdir -p demo
cd demo
quarto create project default --no-open --no-prompt Default
quarto create project website --no-open --no-prompt Website
quarto create project blog --no-open --no-prompt Blog
quarto create project book --no-open --no-prompt Book
quarto create project manuscript --no-open --no-prompt Manuscript
