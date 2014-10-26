require 'spec_helper'

RSpec.describe Tweet, :type => :model do
  describe 'validations' do
    context 'should be invalid' do

      context 'some fields are missed' do
        it 'tweet_id' do
          expect(Tweet.new(attributes_for(:tweet, tweet_id: nil))).not_to be_valid
        end

        it 'tweet_user_name' do
          expect(Tweet.new(attributes_for(:tweet, tweet_user_name: nil))).not_to be_valid
        end

        it 'tweet_user_screen_name' do
          expect(Tweet.new(attributes_for(:tweet, tweet_user_screen_name: nil))).not_to be_valid
        end

        it 'lang' do
          expect(Tweet.new(attributes_for(:tweet, lang: nil))).not_to be_valid
        end

        it 'message' do
          expect(Tweet.new(attributes_for(:tweet, message: nil))).not_to be_valid
        end
      end

      it 'tweet_id is duplicated' do
        tweet = create(:tweet).tweet_id
        expect(Tweet.new(attributes_for(:tweet, tweet_id: tweet))).not_to be_valid
      end
    end
  end

  describe '#get_recent_tweets' do
    pending "add some examples to (or delete) #{__FILE__}"
  end
end
