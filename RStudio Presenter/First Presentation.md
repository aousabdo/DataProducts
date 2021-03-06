Binomial Operating Characterstic Curves
========================================================
author: Aous Abdo
date: Sat, Aug, 23, 2014

Quick Introduction: The Binomial Distribution
========================================================

The binomial distribution describes the outcome of an experiment where the outocme can take one of two possible values. 
The two possible values for the outcome are things like pass/fail, hit/miss, success/fail, and so forth.  

The binomial coefficient represents the number of different ways one can have `x` successes in `n` trials.  

This app calculates the probability of success given a number of shots and a number of failures as a function of the proportion defective.   

The Binomial Distribution Continued
========================================================
The r code below plots the binomial distribution:


```r
x <- seq(0,50,1)
y <- dbinom(x,50,0.2)
plot(x,y, col="blue", "l", ylab="Binomial Density")
```

![plot of chunk unnamed-chunk-1](First Presentation-figure/unnamed-chunk-1.png) 

How to Run the App
========================================================
This web application calculates and plots operating characterstic curves for up to four tests. 

Input parameters for the app include:  

1. Number of shots for each test  
2. Number of failures for each test

By default all four tests are plotted. The user can modify the number of tests plotted by unselecting checkbox
next to the test entry values. 


Modifying Plot Attributes and Saving Plots
========================================================
* To modify plot attributes just check the checkbox next to the "Modify Plot Attributes" on the left side panel.  

* This allows the user to customize the plot such as changing the plot title, axes titles, test names, text sizes, thickness of lines, and other functionalities.

* To modify the X-axis range please select the "Adjust X-axis Range" on the left side panel.

* The user can download the full dataset generated and plotted by the app by clicking on the "Download Data Sample" botton 
on the lower left side of the page. To download the plot in PDF or PNG formats just click the corresponding botton on the lower left side of the page. 
