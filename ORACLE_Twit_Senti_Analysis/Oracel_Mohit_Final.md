Twitter Sentiment Analysis Assignment
========================================================

In this assignment, we are showing that whether Twitter can predict Google stock price movement or not. For five days, 01 Dec 2014 to 05 Dec 2014, Twitter has been mined for Google tweets. 
 

>1) Total number of tweets for day 1 - 33

>2) The sentiment histogram for day 1

![Day 1](https://raw.githubusercontent.com/mohitrathore/IT-497-RM-/master/ORACLE_day-1.png)
>2) Total number of tweets for day 2 - 204

>2) The sentiment histogram for day 2

![Day 2](https://raw.githubusercontent.com/mohitrathore/IT-497-RM-/master/ORACLE_Day1.png)
>3) Total number of tweets for day 3 - 200

>3) The sentiment histogram for day 3

![Day 3](https://raw.githubusercontent.com/mohitrathore/IT-497-RM-/master/ORACLE_Day2.png)
>4) Total number of tweets for day 4 - 200

>4) The sentiment histogram for day 4

![Day 4](https://raw.githubusercontent.com/mohitrathore/IT-497-RM-/master/ORACLE_Day3.png)
>5) Total number of tweets for day 4 - 49

>5) The sentiment histogram for day 5

![Day 5](https://raw.githubusercontent.com/mohitrathore/IT-497-RM-/master/ORACLE_Day5.png)

>3)The graphs comparing the changes in stock price for 5 days to the actual stock price changes:

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-21.png) ![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-22.png) 

This table shows Total sentiment score(TSS) and actual stock price(ASP) for five days

```
##    DATE SCORE Price
## 1 Day 1    16 42.08
## 2 Day 2    40 42.18
## 3 Day 3   104 41.89
## 4 Day 4    89 41.93
## 5 Day 5     2 41.37
```
<p>
<h2>Summary</h2>
I have done the sentiment analysis on Oracle and attempt to predict the stock prices on the basis of sentiment analysis. I have mined oracle tweets for five different days and run sentiment analysis for each day. In sentiment analysis, I am looking for sentiment score that reflects the attitude of tweets whether they are positive or negative. After calculating that score, I have looked at the stock price of the company and a change in price by comparing it with previous day’s price. If the sentiment analysis score is positive and there is an increase in stock price then, we can say that sentiment analysis predicts the stock change and correlation exist between them. But if the sentiment analysis score is positive and there is a decrease in stock price then we can say that sentiment analysis cannot predict the stock price change and no correlation exists between them.

On the day 1, my sentiment analysis score was positive but the stock price for that day was less than the previous day. On the day 2, my sentiment analysis score was again positive but this time stock price for that day was little more than the previous day. On the day 3, my sentiment analysis score was positive but the stock price for that day was less than the previous day.  On the day 4, my sentiment analysis score was positive, and the stock price for that day was very little more than the previous day. But for my day 5, my sentiment analysis score was positive but the stock price for that day was less than the previous day.

According to my findings, I feel that there is no correlation between the sentiment analysis score and changes in stock prices of the company. If your sentiment analysis score is positive and you have found a positive change in the stock price, it may be happened just by chance.
</p>


