# Exam 2 Review 26Oct21
  
#Github version control ----
    # 1. create a github repository with a readme file
    # 2. Copy repository link
    # 3. Create new version control directory in R and paste github link
    # 4. Create a new script and save within the corresponding directory that the R script is saved in, the file should appear under git tab on right of console
    # 5. Now any changes you save will be noted on Git version -- git compares the document you saved to what exists in your Github repository.
    # 6. If you want to save the changes to your file on Github, you need to first COMMIT your files which will stage them and make them available for review by collaborators (if available) then PUSH to main branch
    # TIPS: if your work is ever ahead of your repository, 

# if...else statements ----

best.candy <- 'reeses.cups'
halloween.time <- 'no'
pumpkin.spice <- 'good'

# lets make a statement where our first argument is true
if(best.candy=='reeses.cups') {
  reaction <- 'meh'
} else if(halloween.time=='yes') {
  reaction <- 'hazaah!'
}

#lets add a 3rd test to the if else and change the outcome
if(best.candy=='m&ms') {
  reaction <- 'meh'
} else if(halloween.time=='yes') {
  reaction <- 'hazaah!'
} else if(pumpkin.spice =='good') {
  reaction <- 'basic'
}

# if you want an if else statement that returns an object if a condition is true, but nothing happens if the condition is false, do this: 

if(best.candy=='m&ms') {
  reaction <- 'meh'
}




# Wide to long ----
  #library(tidyverse)
auto <- mtcars
head(auto)

auto.long <- gather(data = auto, key = 'metrics', value = 'value', c(1:3)) # take the column headings from 1-3 and gather them into a new single column 'metrics' then print their associated values to 'value'
head(auto.long)

# we can also use melt from reshape2
  #library(reshape2)

auto.long.melt <- melt(data = auto, id.vars = c('hp', 'drat', 'wt', 'qsec', 'vs', 'gear', 'carb'), measure.vars = c('mpg', 'cyl', 'disp'), variable.name = 'metrics') # this time we need to specify the columns we want to keep in 'id.vars' and the columns we want to compress in 'measure.vars', and the name of new column in 'variable.name'

#practice: use the columns 'hp', 'wt', and 'gear'. 

auto.long.2 <- gather(data = auto, key = 'metrics', value = 'value', c(4,6,10))

auto.long.melt.2 <- melt(data = auto, id.vars = c('mpg', 'cyl', 'disp', 'drat', 'qsec', 'vs', 'am', 'carb'), measure.vars = c('hp', 'wt', 'gear'), variable.name = 'metrics')
head(auto.long.melt.2)
