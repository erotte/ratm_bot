#!/usr/bin/env ruby
require 'twitter'
class RatmBot
  LYRICS = [
    "And now you do what they told ya \nnow you’re under control",
    "And now you do what they told ya \nnow you’re under control",
    "And now you do what they told ya \nnow you’re under control",
    "And now you do what they told ya \nnow you’re under control",
    "And now you do what they told ya",
    "And now you do what they told ya",
    "And now you do what they told ya",
    "But now you do what they told ya",
    "Come on \nUh",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Fuck you, I won’t do what you tell me",
    "Motherfucker! \nUh",
    "Now you do what they told ya",
    "Now you do what they told ya",
    "Now you do what they told ya",
    "Now you do what they told ya",
    "Some of those that work forces \nAre the same that burn crosses",
    "Some of those that work forces \nAre the same that burn crosses",
    "Some of those that work forces \nAre the same that burn crosses",
    "Some of those that work forces \nAre the same that burn crosses",
    "Some of those that work forces \nAre the same that burn crosses",
    "Those who died are justified \nFor wearing the badge \nThey’re the chosen whites",
    "Those who died are justified \nFor wearing the badge \nThey’re the chosen whites",
    "Those who died are justified \nFor wearing the badge \nThey’re the chosen whites",
    "Those who died are justified \nFor wearing the badge \nThey’re the chosen whites",
    "Uh \nKilling in the name of",
    "Uh \nKilling in the name of",
    "Uh \nKilling in the name of",
    "Uh \nKilling in the name of",
    "Uh \nYeah",
    "Well now you do what they told ya",
    "You justify those that died \nBy wearing the badge \nThey’re the chosen whites",
    "You justify those that died \nBy wearing the badge \nThey’re the chosen whites",
    "You justify those who died \nBy wearing the badge \nThey’re the chosen whites",
    "You justify those who died \nBy wearing the badge \nThey’re the chosen whites"
  ].freeze


  CONFIG = {
    consumer_key: ENV['TWITTER_CONSUMER_KEY'],
    consumer_secret: ENV['TWITTER_CONSUMER_SECRET'],
    access_token: ENV['TWITTER_ACCESS_TOKEN'],
    access_token_secret: ENV['TWITTER_ACCESS_TOKEN_SECRET']
  }

  def initialize
    @client = ::Twitter::REST::Client.new(CONFIG)
  end

  def verse
    LYRICS.sample
  end

  def tweet!
    @client.update(verse)
  end

end

# RatmBot.new.tweet!
# bot = RatmBot.new
# 110.times { puts bot.verse }
puts RatmBot.new.verse