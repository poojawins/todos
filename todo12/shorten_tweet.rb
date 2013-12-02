("to"|"two"|"too")  # "to, two, too" become '2' 
("for"|"four")    # "for, four" become '4'
("be")          # 'be' becomes 'b'
("you")         # 'you' becomes 'u'
("at")          # "at" becomes "@" 
("and")         # "and" becomes "&"


def shorten_tweet(tweet)
  tweet.each do |word|

    if word == /(to|two|too)/
      puts '2'
    elsif word == /(for|four)/
      puts '4'
    elsif word == /("be")/
      puts 'b'
    elsif word == /("you")/
      puts 'u'
    elsif word == /("at")/
      puts '@'
    elsif word == /("and")/
      puts '&'
    else
      puts word
    end

  end

end

shorten_tweet("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")

# 1. "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
# 2. "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
# "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
# 3. "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"


