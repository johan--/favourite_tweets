module Twitter
  class Client

    def self.get_recent_tweets(about = 'Ukraine', quantity = 500)
      return [] unless Synchronization.is_allowed

      begin
        tweets = TWITTER_CLIENT.search(about, result_type: 'recent').take(quantity)
        Synchronization.create(is_success: tweets.present?)
        tweets
      rescue Twitter::Error
        Synchronization.create(is_success: false)
        []
      end
    end
  end
end