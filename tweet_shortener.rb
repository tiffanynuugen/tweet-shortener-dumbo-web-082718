def dictionary
  {
 "hello" => 'hi',
["to, two, too"] => '2',
["for, four"] => '4',
'be' => 'b',
'you' => 'u',
"at" => "@" ,
"and" => "&"
    }
end
def word_substituter(tweet)
    tweet.split.collect do |word|
    keys = dictionary.keys.flatten.join(",").split(",")
    low_case = word.downcase
        if keys.include?(low_case) && low_case == "for" || low_case == "four"
            word = dictionary[["for, four"]]
        elsif keys.include?(low_case) && low_case == "to" || low_case == "two" || low_case == "too"
            word = dictionary[["to, two, too"]]
        elsif keys.include?(low_case)
            word = dictionary[low_case]
        else
            word
        end
  end.join(" ")
end
 def bulk_tweet_shortener(array)
  array.each{|each_array| puts word_substituter(each_array)}
end
 def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end
 def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet).length > 140 ? tweet[0..139] : selective_tweet_shortener(tweet)
end
