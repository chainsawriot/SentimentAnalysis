% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SentimentDictionary.R
\name{SentimentDictionaryWeighted}
\alias{SentimentDictionaryWeighted}
\title{Create a sentiment dictionary of words linked to a score}
\source{
\url{http://dx.doi.org/10.2139/ssrn.2522884}
}
\usage{
SentimentDictionaryWeighted(
  words,
  scores,
  idf = rep(1, length(words)),
  intercept = 0
)
}
\arguments{
\item{words}{is collection (vector) of different words as strings}

\item{scores}{are the corresponding scores or weights denoting the word's polarity}

\item{idf}{provide further details on the frequency of words in the corpus as an
additional source for normalization}

\item{intercept}{is an optional parameter for shifting the zero level (default: 0)}
}
\value{
Returns a new object of type \code{SentimentDictionaryWordlist}
}
\description{
This routine creates a new object of type \code{SentimentDictionaryWeighted} that
contains a number of words, each linked to a continuous score (i.e. weight) for
specifying its polarity. The scores can later be interpreted as a linear model
}
\note{
The intercept is useful when the mean or median of a response variable is 
not exactly located at zero. For instance, stock market returns have slight positive
bias.
}
\examples{
# generate dictionary (based on linear model)
d <- SentimentDictionaryWeighted(c("increase", "decrease", "exit"),
                                 c(+1, -1, -10),
                                 rep(NA, 3))
summary(d)
# alternative call
d <- SentimentDictionaryWeighted(c("increase", "decrease", "exit"),
                                 c(+1, -1, -10))
summary(d)
# alternative call
d <- SentimentDictionary(c("increase", "decrease", "exit"),
                         c(+1, -1, -10),
                         rep(NA, 3))
summary(d)                                
}
\references{
Pr{\"o}llochs and Feuerriegel (2015). Generating Domain-Specific 
Dictionaries Using Bayesian Learning. 23rd European Conference on Information 
Systems (ECIS 2015).
}
\seealso{
\code{\link{SentimentDictionary}}
}
\keyword{dictionary}
