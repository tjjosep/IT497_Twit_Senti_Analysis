###############################################################################
## IT497 November 19, 2014 In-Class Exercise
##
## The R code that we will use today is taken directly from Christopher
## Claeys' Upstat 14 Presentation
## http://www.up-stat.org/files/presentations/UPSTAT2014_Claeys_twitterScrape.R
## 
## We are only exploring a portion of the original code. I encourage you to 
## visit the original page for more information and several interesting
## extensions. 
###############################################################################

## When you see:

###############################################################################
##
##   STOP
##
###############################################################################

## please stop and wait for further instructions

###############################################################################
## If you have not installed any of the following, 
## you will need to install the missing package before loading it.
library("twitteR")
library("wordcloud")
library("tm")
library("ggplot2")
library("reshape2")


## These are my codes for an application I created for this example.
## These codes will not work for you

my.key <-"qmTu6klRbsQhzg1vg7W8rORQY"
my.secret <-"d7TkMlRjPMJqP66IryCQG8hPt0aZ7fYl07tjHG4EtRHV4wAS8n"

cred <- OAuthFactory$new(consumerKey=my.key,
                         consumerSecret=my.secret,
                         requestURL='https://api.twitter.com/oauth/request_token',
                         accessURL='https://api.twitter.com/oauth/access_token',
                         authURL= 'https://api.twitter.com/oauth/authorize')

## save the credentials to your local drive
## on future uses of the script you'll only need to load the .Rdata
## file and won't have to re-authorize your account.

save(cred, file="twitter_authentication.Rdata")


load("twitter_authentication.Rdata")
cred$handshake()


###############################################################################
##
##   STOP
##
############################################
###############################################################################
##
##   STOP
##
###############################################################################

## check that authorization was successful

registerTwitterOAuth(cred)

###############################################################################
##
##   STOP
##
###############################################################################

## tweets <- searchTwitter("@UPS",n=500)
registerTwitterOAuth(cred)



tweets1 <- searchTwitter("@UPS",n=400, lang="en", since='2014-12-01', until='2014-12-02')
tweets2 <- searchTwitter("@UPS",n=400, lang="en", since='2014-12-02', until='2014-12-03')
tweets3 <- searchTwitter("@UPS",n=400, lang="en", since='2014-12-03', until='2014-12-04')
tweets4 <- searchTwitter("@UPS",n=400, lang="en", since='2014-12-04', until='2014-12-05')
tweets5 <- searchTwitter("@UPS",n=400, lang="en", since='2014-12-05', until='2014-12-06')

###############################################################################
##
##   STOP
##
###############################################################################

length(tweets1)
length(tweets2)
length(tweets3)
length(tweets4)
length(tweets5)
###################################

## Now, we will extract the fields that we want
tweets1.id <- sapply(tweets1, function(x) x$getId())
tweets1.text <- sapply(tweets1, function(x) x$getText())
tweets1.screenname <- sapply(tweets1, function(x) x$getScreenName())
tweets1.isretweet <- sapply(tweets1, function(x) x$getIsRetweet())
tweets1.retweeted <- sapply(tweets1, function(x) x$getRetweeted())
tweets1.created <- sapply(tweets1, function(x) x$getCreated())

tweets2.id <- sapply(tweets2, function(x) x$getId())
tweets2.text <- sapply(tweets2, function(x) x$getText())
tweets2.screenname <- sapply(tweets2, function(x) x$getScreenName())
tweets2.isretweet <- sapply(tweets2, function(x) x$getIsRetweet())
tweets2.retweeted <- sapply(tweets2, function(x) x$getRetweeted())
tweets2.created <- sapply(tweets2, function(x) x$getCreated())


tweets3.id <- sapply(tweets3, function(x) x$getId())
tweets3.text <- sapply(tweets3, function(x) x$getText())
tweets3.screenname <- sapply(tweets3, function(x) x$getScreenName())
tweets3.isretweet <- sapply(tweets3, function(x) x$getIsRetweet())
tweets3.retweeted <- sapply(tweets3, function(x) x$getRetweeted())
tweets3.created <- sapply(tweets3, function(x) x$getCreated())

tweets4.id <- sapply(tweets4, function(x) x$getId())
tweets4.text <- sapply(tweets4, function(x) x$getText())
tweets4.screenname <- sapply(tweets4, function(x) x$getScreenName())
tweets4.isretweet <- sapply(tweets4, function(x) x$getIsRetweet())
tweets4.retweeted <- sapply(tweets4, function(x) x$getRetweeted())
tweets4.created <- sapply(tweets4, function(x) x$getCreated())


tweets5.id <- sapply(tweets5, function(x) x$getId())
tweets5.text <- sapply(tweets5, function(x) x$getText())
tweets5.screenname <- sapply(tweets5, function(x) x$getScreenName())
tweets5.isretweet <- sapply(tweets5, function(x) x$getIsRetweet())
tweets5.retweeted <- sapply(tweets5, function(x) x$getRetweeted())
tweets5.created <- sapply(tweets5, function(x) x$getCreated())



###############################################################################
##
##   STOP
##
###############################################################################


## Write data to file

df1 <- data.frame(tweets1.id, 
                  tweets1.text, 
                  tweets1.screenname, 
                  tweets1.isretweet, 
                  tweets1.retweeted, 
                  tweets1.created)
names(df1) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df1, file = "UPS1.txt", append = TRUE)

df2 <- data.frame(tweets2.id, 
                  tweets2.text, 
                  tweets2.screenname, 
                  tweets2.isretweet, 
                  tweets2.retweeted, 
                  tweets2.created)
names(df2) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df2, file = "UPS2.txt", append = TRUE)

df3 <- data.frame(tweets3.id, 
                  tweets3.text, 
                  tweets3.screenname, 
                  tweets3.isretweet, 
                  tweets3.retweeted, 
                  tweets3.created)
names(df3) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df3, file = "UPS3.txt", append = TRUE)


df4 <- data.frame(tweets4.id, 
                  tweets4.text, 
                  tweets4.screenname, 
                  tweets4.isretweet, 
                  tweets4.retweeted, 
                  tweets4.created)
names(df4) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df4, file = "UPS4.txt", append = TRUE)


df5 <- data.frame(tweets5.id, 
                  tweets5.text, 
                  tweets5.screenname, 
                  tweets5.isretweet, 
                  tweets5.retweeted, 
                  tweets5.created)
names(df5) <-c("id", "text", "screenname", "isretweet", "retweeted", "created")
write.table(df5, file = "UPS5.txt", append = TRUE)




###############################################################################
##
##   STOP
##
###############################################################################
## these are the files from ReggieNet
##load opinion lexicon
##from http://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html#lexicon
## the load path is relative to the working directory that is set above
pos <- scan("positive-words.txt",what="character",comment.char=";")
neg <- scan("negative-words.txt",what="character",comment.char=";")

## create corpus
## these functions from the tm package
tweets1.corpus <- Corpus(VectorSource(tweets1.text))
tweets2.corpus <- Corpus(VectorSource(tweets2.text))
tweets3.corpus <- Corpus(VectorSource(tweets3.text))
tweets4.corpus <- Corpus(VectorSource(tweets4.text))
tweets5.corpus <- Corpus(VectorSource(tweets5.text))


###############################################################################
##
##   STOP
##
###############################################################################



## clean up
tweets1.corpus <- tm_map(tweets1.corpus, tolower) 
tweets1.corpus <- tm_map(tweets1.corpus, removePunctuation)
tweets1.corpus <- tm_map(tweets1.corpus, function(x) removeWords(x,stopwords()))

tweets2.corpus <- tm_map(tweets2.corpus, tolower) 
tweets2.corpus <- tm_map(tweets2.corpus, removePunctuation)
tweets2.corpus <- tm_map(tweets2.corpus, function(x) removeWords(x,stopwords()))

tweets3.corpus <- tm_map(tweets3.corpus, tolower) 
tweets3.corpus <- tm_map(tweets3.corpus, removePunctuation)
tweets3.corpus <- tm_map(tweets3.corpus, function(x) removeWords(x,stopwords()))

tweets4.corpus <- tm_map(tweets4.corpus, tolower) 
tweets4.corpus <- tm_map(tweets4.corpus, removePunctuation)
tweets4.corpus <- tm_map(tweets4.corpus, function(x) removeWords(x,stopwords()))

tweets5.corpus <- tm_map(tweets5.corpus, tolower) 
tweets5.corpus <- tm_map(tweets5.corpus, removePunctuation)
tweets5.corpus <- tm_map(tweets5.corpus, function(x) removeWords(x,stopwords()))


## split the tweets in the corpus up into individual words
## lapply iterates over each element in the corpus
## and applies the strsplit function
## the splitting argument is the 3rd in the lapply function
## and is splitting on white space.
corpus1.split <- lapply(tweets1.corpus,strsplit,"\\s+")
corpus2.split <- lapply(tweets2.corpus,strsplit,"\\s+")
corpus3.split <- lapply(tweets3.corpus,strsplit,"\\s+")
corpus4.split <- lapply(tweets4.corpus,strsplit,"\\s+")
corpus5.split <- lapply(tweets5.corpus,strsplit,"\\s+")


## find matches for the individual words in the two lexicons
## lapply again, x takes on an element in the corpus
## at each iteration
matches1 <- lapply(corpus1.split,function(x) {
  match.pos <- match(x[[1]],pos)
  match.neg <- match(x[[1]],neg) 
  
  ## return the length of each match vector, non-na 
  list(length(which(!is.na(match.pos))),length(which(!is.na(match.neg))))
})


matches2 <- lapply(corpus2.split,function(x) {
  match.pos <- match(x[[1]],pos)
  match.neg <- match(x[[1]],neg) 
  
  ## return the length of each match vector, non-na 
  list(length(which(!is.na(match.pos))),length(which(!is.na(match.neg))))
})

matches3 <- lapply(corpus3.split,function(x) {
  match.pos <- match(x[[1]],pos)
  match.neg <- match(x[[1]],neg) 
  
  ## return the length of each match vector, non-na 
  list(length(which(!is.na(match.pos))),length(which(!is.na(match.neg))))
})

matches4 <- lapply(corpus4.split,function(x) {
  match.pos <- match(x[[1]],pos)
  match.neg <- match(x[[1]],neg) 
  
  ## return the length of each match vector, non-na 
  list(length(which(!is.na(match.pos))),length(which(!is.na(match.neg))))
})

matches5 <- lapply(corpus5.split,function(x) {
  match.pos <- match(x[[1]],pos)
  match.neg <- match(x[[1]],neg) 
  
  ## return the length of each match vector, non-na 
  list(length(which(!is.na(match.pos))),length(which(!is.na(match.neg))))
})


###############################################################################
##
##   STOP
##
###############################################################################

## turn the matches into a matrix
## one column for positive, one for negative
match1.matrix <- matrix(unlist(matches1),nrow=length(matches1),ncol=2,byrow=T)
match2.matrix <- matrix(unlist(matches2),nrow=length(matches2),ncol=2,byrow=T)
match3.matrix <- matrix(unlist(matches3),nrow=length(matches3),ncol=2,byrow=T)
match4.matrix <- matrix(unlist(matches4),nrow=length(matches4),ncol=2,byrow=T)
match5.matrix <- matrix(unlist(matches5),nrow=length(matches5),ncol=2,byrow=T)

## calculate a simple sentiment score by substracting
## positive count from negative count
simple1.sentiment <- match1.matrix[,1] - match1.matrix[,2]
simple2.sentiment <- match2.matrix[,1] - match2.matrix[,2]
simple3.sentiment <- match3.matrix[,1] - match3.matrix[,2]
simple4.sentiment <- match4.matrix[,1] - match4.matrix[,2]
simple5.sentiment <- match5.matrix[,1] - match5.matrix[,2]

## histogram of sentiment
hist(simple1.sentiment)
hist(simple2.sentiment)
hist(simple3.sentiment)
hist(simple4.sentiment)
hist(simple5.sentiment)

###############################################################################
##
##   STOP
##
###############################################################################

sum(simple1.sentiment)
sum(simple2.sentiment)
sum(simple3.sentiment)
sum(simple4.sentiment)
sum(simple5.sentiment)


###############################################################################
##
##   STOP
##
###############################################################################


SDate <- as.Date(c('2014/12/01', '2014/12/02', '2014/12/03', '2014/12/04', '2014/12/05'))
Score <-  c(-1, 1, 1, 1, 1)
StockChange <- c(-1.64, .57, -.39, .13, .58)

SentiTab <- data.frame(SDate, Score, StockChange)


SentiTab_long <- melt(SentiTab, id="SDate")


yTotalPlot <- ggplot(data = SentiTab_long, aes(x = SDate, y = value,  group=variable, colour=variable, size = 1)) +
  geom_line()
show(yTotalPlot);

###############################################################################
##
##   STOP
##
###############################################################################

