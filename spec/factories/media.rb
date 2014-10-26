require 'ffaker'

FactoryGirl.define do
  factory :media do
    tweet
    media_type 'Twitter::Media::Photo'
    media_url { Faker::Internet.http_url }
  end
end
