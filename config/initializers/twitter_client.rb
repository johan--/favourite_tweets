require 'twitter_client'

TWITTER_CLIENT = Twitter::REST::Client.new do |config|
  config.consumer_key = CREDS['twitter']['consumer_key']
  config.consumer_secret = CREDS['twitter']['consumer_secret']
end