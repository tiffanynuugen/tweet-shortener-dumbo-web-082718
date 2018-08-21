def shorten_tweet(tweet, replacements)
  if tweet.length <= 140
    return tweet
  end

  new_tweet = []
  tweet.split().each do |word|
    new_tweet << (replacements[word.downcase] ? replacements[word.downcase] : word)
  end

  new_tweet.join(' ')[0, 140]
end

def shorten_tweet2(tweet, replacements)
  if tweet.length <= 140
    return tweet
  end

  replacements.keys.each do |key|
    mod_key = key.downcase.center(key.length + 2)
    tweet.gsub! mod_key, ' ' + replacements[key] + ' '
  end
  tweet[0, 140]
end

tweets.each do |tweet|
  puts shorten_tweet(tweet, replacements)
  puts shorten_tweet2(tweet, replacements)
end
