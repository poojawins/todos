def shorten_tweet(tweet)
  if tweet.length > 140
    tweet.gsub!(' to ', ' 2 ')
    tweet.gsub!(' two ', ' 2 ')
    tweet.gsub!(' too ', ' 2 ')
    tweet.gsub!(' for ', ' 4 ')
    tweet.gsub!(' four ', ' 4 ')
    tweet.gsub!(' be ', ' b ')
    tweet.gsub!(' you ', ' u ')
    tweet.gsub!(' at ', ' @ ')
    tweet.gsub!(' and ', ' & ')
  end
  puts tweet
  puts tweet.length
end

shorten_tweet("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")
shorten_tweet("OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?")
shorten_tweet("I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.")
shorten_tweet("GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!")
shorten_tweet("who is the best at being four")
