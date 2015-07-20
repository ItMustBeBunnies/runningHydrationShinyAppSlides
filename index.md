---
title       : Running hydration
subtitle    : A tool for predicting hydration level and suggested water intake for a race
author      : A runner
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- 

## Introduction

 - Many runners think almost exclusively in terms of a pacing strategy for
a given distance
 - Water intake can get left to chance, with the risk of taking in too much
 at the start, or before, the race, or drinking too little on a long race
 - The better idea a runner has of how much water he/she loses over the race,
 the better they can plan on taking in just the right amount
 - Here we introduce a new, scientific(ish) interactive app for visualizing 
 water loss during a run

--- .class #id

## How much do you lose?

 - Cannot easily measure your volume before and after!
 - Weight as a proxy (1 kg equivalent to 1000 ml water)
 - Can weigh before and after
 - Other factors might influence water loss
    + temperature
    + humidity
    + pace
    + age
    + sex
 - Therefore gather data recording variety of variables and weight before/after run

---

## Weight (water) loss with run distance

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 

Rate of water loss is approximately 50 ml/km.

---

## Introducing the brand new shiny app for predicting water loss

Based on (0.05) decades of extensive data gathering (well, 16 of my own runs)
we have carefully calculated an average rate of water loss of 50 ml/km.

The brand new [app](https://itmustbebunnies.shinyapps.io/shinyapp) currently:
 - supports the visualization of predicted water loss during a race 
 - gives at least some idea of how much water is enough
 - allows you to adjust the water stops you make to see how dehydrated you might become if
 you don't stop
 - allows you to see what your maximum dehydration could be

Future enhancements could include tailored predictions based on sex, age, weather conditions etc.
