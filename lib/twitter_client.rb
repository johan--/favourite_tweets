module Twitter
  class Client

    def self.get_recent_tweets(about = 'Ukraine', quantity = 500)
      begin
        TWITTER_CLIENT.search(about, result_type: 'recent').take(quantity)
      rescue Twitter::Error
        []
      end
    end
  end
end