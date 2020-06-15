devtools::install_github("mkearney/rtweet")
library(rtweet)

list1 <-read.csv("https://raw.githubusercontent.com/r-community/tweet-explorer/master/twitter_account.csv")
list1 <- list1[[1]]

count_followers <- function(account){
  account <- substring(account,2)
  followers <- get_followers(account,n=100000000)
  # print(account)
  # print(followers)
  # followers_data <- lookup_users(followers$user_id)
  return(nrow(followers))
}

followers <- lapply(list1,count_followers)
print(followers)
