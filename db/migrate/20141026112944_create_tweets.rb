class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :tweet_id, limit: 5
      t.string :tweet_user_name
      t.string :tweet_user_screen_name
      t.text :tweet_user_profile_image_url
      t.text :message
      t.string :lang
      t.boolean :is_viewed, default: false

      t.timestamps
    end

    add_index :tweets, :tweet_id, unique: true
  end
end
