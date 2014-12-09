Twitter Sentiment Analysis Assignment
========================================================

In this assignment, we are showing that whether Twitter can predict Google stock price movement or not. For five days, 01 Dec 2014 to 05 Dec 2014, Twitter has been mined for Google tweets. 
 

# Total number of tweets each day- 200

# Histograms for each day

> The sentiment histogram for day 1

![Day 1](https://raw.githubusercontent.com/rajneesh2017/histogramPics/master/Rplot01.png)

> The sentiment histogram for day 2

![Day 2](https://raw.githubusercontent.com/rajneesh2017/histogramPics/master/Rplot02.png)

> The sentiment histogram for day 3

![Day 3](https://raw.githubusercontent.com/rajneesh2017/histogramPics/master/Rplot03.png)

> The sentiment histogram for day 4

![Day 4](https://raw.githubusercontent.com/rajneesh2017/histogramPics/master/Rplot04.png)

> The sentiment histogram for day 5

![Day 5](https://raw.githubusercontent.com/rajneesh2017/histogramPics/master/Rplot05.png)

# Graphs for comparision

>The graphs comparing the changes in stock price for 5 days to the actual stock price changes:

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-21.png) ![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-22.png) 

# Table
This table shows Total sentiment score(TSS) and actual stock price(ASP) for five days

```
##    DAYS TSS   ASP
## 1 Day 1  27 533.8
## 2 Day 2 102 533.8
## 3 Day 3  35 531.3
## 4 Day 4  91 537.3
## 5 Day 5  52 525.3
```

# Summary
>
Here, after doing Twitter sentiment analysis, we can clearly see that total sentiment score can predict stock price changes but it is not always the same. The total sentiment score is the sum of positive and negative sentiment score and this can give an idea about stock price change but we cannot rely on that basis. Here I have done analysis for 5 days in which it is showing the changes quite the same as in actual stock price change, but it could be coincidence. If going further in the analysis, I found that it cannot predict the stock price change always.
>
Now if we talk about the five days analysis, the bar graph for Total sentiment score (TSS) and actual stock price (ASP) shows almost the same pattern. We can see in the bar graphs and above table that for the 1st day and 2nd day, there is a big change in total sentiment score but actual stock price is almost the same, then, on 3rd day both TSS and ASP goes down, on 4th day both goes up and on 5th day both goes down. Therefore, we can say that Twitter sentiment analysis can give an idea up to an extent, but we cannot rely on that. 
>
In conclusion, all I can say that Twitter sentiment analysis can give an idea to guess the actual stock price change but we cannot produce a statement like Twitter can predict stock price movement truly because the correlation between total sentiment score based on tweets and actual stock price change is not always the same.


