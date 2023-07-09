---
layout: experience
title:  Adaptive Sampling by Histogram Equalization
sort_order: 100
category:  simulation
tags:
    - Data Science
    - Machine Learning
    - Sensors
    - Optimiaztion
summary: >-
    Gradient-less sampling algorithm for continuouse and discrete parameter space.
references:
    - fadiran2006maximizing
    - fadiran2006adaptive
---
<!--more-->
Development of an adaptive sampling method that efficiently varies the sampling rate in local regions of a function based on the distribution of already collected samples. The algorithm does not rely on gradients in the parameter space and therefore allows to create accurate representation with less collected or computed sample points. In cases where he acquisition of samples is expensive, like computer simulations or experiments, ASHE has the advantage of requiring significantly less data points. 
