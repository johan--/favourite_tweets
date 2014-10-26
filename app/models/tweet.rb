class Tweet < ActiveRecord::Base
  has_many :medias

  validates :tweet_id, :message, :tweet_user_name, :tweet_user_screen_name, :lang, presence: true
  validates :tweet_id, uniqueness: true


  def self.get_recent_tweets
    twitter_messages = Twitter::Client.get_recent_tweets
    twitter_messages.each do |twitter_message|
      next if Tweet.find_by(tweet_id: twitter_message.id)

      tweet = Tweet.create(
          tweet_id: twitter_message.id,
          message: twitter_message.full_text,
          tweet_user_name: twitter_message.user.name,
          tweet_user_screen_name: twitter_message.user.screen_name,
          tweet_user_profile_image_url: twitter_message.user.profile_image_url.to_s,
          lang: twitter_message.lang
      )

      twitter_message.media.each do |twitter_message_media|
        tweet.medias.create(
            media_type: twitter_message_media.class.to_s,
            media_url: twitter_message_media.url.to_s
        )
      end
    end
  end
end
