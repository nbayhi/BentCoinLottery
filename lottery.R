# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#

library(stats)

#make an resultsay of ten zeroes. for every flip (i), fill it with a number.
#that number is determined by a RNG, where if the RNG returns <0.1 it's 1,
#otherwise stays zero



RepFlipExp <- function(reps, prob_heads, numflips){
#make function letting you run an experiment with a given prob a number of times, with a number of samples in each experiment
    for (j in 1:reps){ #iterate the rows of experiments
      result <- array(0,numflips) #create an array of 0's and put it into the results variable
        for (i in 1:numflips){ #fill the array with the result of each flip 
          result[i] <- if (runif(1) < prob_heads) "H" else "T" #using the RNG, fill an "H" lower than prob, fill a "T" higher than prob
        }
      print(result) #display all the results
    }
}

