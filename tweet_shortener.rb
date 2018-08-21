def word_substituter(string)
  string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end
word_substituter(tweet_one)

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

bulk_tweet_shortener(tweets)

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end
selective_tweet_shortener(tweet_three)

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..140] + '...'
  else
    tweet
  end
end

shortened_tweet_truncator(tweet_three)
