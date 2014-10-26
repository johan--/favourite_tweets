require 'ffaker'

FactoryGirl.define do
  factory :tweet do
    tweet_id { rand(10000) }
    tweet_user_name { Faker::Name.name }
    tweet_user_screen_name { Faker::Name.name }
    tweet_user_profile_image_url { Faker::Internet.http_url }
    message { Faker::Lorem.paragraph }
    lang 'en'
  end
end
